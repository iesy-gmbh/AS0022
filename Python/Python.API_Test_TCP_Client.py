import socket, struct,time
from tqdm import tqdm

def wait_with_progress(duration=60):

    with tqdm(total=duration, desc="LabVIEW-Test läuft", unit="s") as pbar:
        for _ in range(duration):
            time.sleep(1)
            pbar.update(1)


def test_sndb_api(host: str, port: int = 6666, msg: str = "", sndb: str = "") -> str:
    """
    Verbindet sich mit einem LabVIEW-TCP-Server, sendet den Befehl 'TEST/STATUS/STOP/STOPEXE'
    und gibt die Antwort als String zurück.

    :param host: IP-Adresse oder Hostname des LabVIEW-Servers
    :param port: TCP-Port (Standard: 6000)
    :param msg: TEST: Execute API test → save report → return result
                STATUS: return the last result
                VERSION: Get the LabVIEW-EXE version
                STOP: Stop the current test (no need to run it specifically, run it to test TCP connection)
                STOPEXE: Stop the LabVIEW-EXE
    :param sndb: SNDB: Producktive SNDB Server
                 SNDBTest: SNDB Test Server
    :return: Antwort des LabVIEW-Servers als String
    """
    try:
        full_msg = f"{msg}|{sndb}"
        msg_bytes = full_msg.encode("utf-8")
        msg_len = struct.pack("!I", len(msg_bytes))

        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect((host, port))
            s.sendall(msg_len + msg_bytes)

            if msg.upper() == "TEST":
                wait_with_progress(60)

            data = b""
            while True:
                packet = s.recv(4096)
                if not packet:
                    break
                data += packet

        result = data.decode("latin-1", errors="ignore")
        return result

    except Exception as e:
        return f"Fehler: {e}"

if __name__ == "__main__":
    print(test_sndb_api("localhost", 6666, "TEST", "SNDB"))