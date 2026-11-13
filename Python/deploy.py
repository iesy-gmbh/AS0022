#!/usr/bin/env python3

import subprocess

from python_helper.console import ask_multiple_choice_question, ask_yes_no_question, Format, print_title, print_step, \
    print_success, print_error
from python_helper.database import create_backup
from python_helper.dotenv import dotenv_get, dotenv_set, path_to_dotenv
from python_helper.github_api import GitHubAPI
from python_helper.services import services

if __name__ == "__main__":
    api = GitHubAPI(dotenv_get("GITHUB_USER"), dotenv_get("GITHUB_TOKEN"))

    print_title("iesy Server Deployment")

    if not path_to_dotenv().exists():
        print_error("It seems that this system has not been initialised yet. Run `initialise.py` first.")
        raise SystemExit(1)

    if dotenv_get("COMPOSE_PROFILES") == "development":
        print_error(
            "This deployment script cannot be used in development environments.\nUse Git to manage the respective repository in the `apps/` directory.")
        raise SystemExit(1)

    service_choices = {}
    for service_id, service in services.items():
        service_choices[service.label] = service_id
    selected_service = ask_multiple_choice_question("Which service do you want to deploy?",
                                                    list(service_choices.keys()),
                                                    highlighted_choice="SNDB", default_choice="SNDB")
    service = services[service_choices[selected_service]]

    env_var_name = f"{selected_service.upper()}_VERSION"
    previous_version = dotenv_get(env_var_name)
    available_versions = api.list_available_container_versions(service.github_repository_name.lower())
    selected_version = ask_multiple_choice_question("Which tag would you like to deploy?", available_versions,
                                                    highlighted_choice=previous_version)
    confirmed_deployment = ask_yes_no_question(f"Deploy {Format.Cyan}{selected_version}{Format.Reset}?",
                                               default_value=False)

    if not confirmed_deployment:
        print_error("Yeah, I’m scared too.")
        print("")
        raise SystemExit(1)

    print_title(f"Deploying {selected_version}")

    environment = dotenv_get("ENVIRONMENT")
    if environment == "production":
        print_step("Creating a database dump.")
        create_backup(database=service.database_name, suffix=f"_before_deploying__{selected_version.replace('.', '-')}")

    print_step("Writing new version number to `.env`.")
    dotenv_set(env_var_name, selected_version)

    print_step("Pulling new Docker images.")
    subprocess.run(["/usr/bin/docker", "compose", "pull", selected_service], check=True)

    print_step("Starting new images.")
    subprocess.run(["/usr/bin/docker", "compose", "up", "--detach", selected_service], check=True)

    if selected_service == "sndb":
        print_step("Running database migrations.")
        subprocess.run([
            "/usr/bin/docker", "compose", "exec", "sndb",
            "php", "bin/console", "doctrine:migrations:migrate",
            "-vv", "--allow-no-migration", "--no-interaction"], check=True)

    if environment == "production":
        print_step("Reporting deployment to GitHub.")
        api.create_sndb_deployment(selected_version, repository=service.github_repository_name, environment=environment)

    if environment == "staging":
        print_step("Reporting deployment to GitHub.")
        api.create_sndb_deployment(selected_version, repository=service.github_repository_name, environment=environment)

    print_success("Done!")
