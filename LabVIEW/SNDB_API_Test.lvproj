<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="26008000">
	<Item Name="Mein Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">Mein Computer/VI-Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">Mein Computer/VI-Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="LabVIEW.Elements" Type="Folder" URL="../LabVIEW.Elements">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LabVIEW.FGV" Type="Folder" URL="../LabVIEW.FGV">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LabVIEW.HTTPs_Client" Type="Folder" URL="../LabVIEW.HTTPs_Client">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LabVIEW.Library" Type="Folder" URL="../LabVIEW.Library">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LabVIEW.Main" Type="Folder" URL="../LabVIEW.Main">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LabVIEW.Service" Type="Folder" URL="../LabVIEW.Service">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LabVIEW.Type Definitions" Type="Folder" URL="../LabVIEW.Type Definitions">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="builds" Type="Folder" URL="../../builds">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Abhängigkeiten" Type="Dependencies"/>
		<Item Name="Build-Spezifikationen" Type="Build">
			<Item Name="API_Test_TCP_Server" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{651975E5-4D69-4650-BE8F-E9074B3E5C98}</Property>
				<Property Name="App_INI_GUID" Type="Str">{C0278052-7320-4D69-AA30-D80ACCD68578}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{980D954D-743B-4A79-B082-46F96B651AF7}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">API_Test_TCP_Server</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">German</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/API_Test_TCP_Server</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{362CCC3D-62AE-42DE-B7B0-5DF1CBC37E90}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Destination[0].destName" Type="Str">API_Test_TCP_Server</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/API_Test_TCP_Server/API_Test_TCP_Server</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Hilfsdatei-Verzeichnis</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/API_Test_TCP_Server/data</Property>
				<Property Name="SourceCount" Type="Int">24</Property>
				<Property Name="Source[0].itemID" Type="Str">{DB57D387-CC6F-11F1-B351-000C29B5D22E}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].itemID" Type="Ref">/Mein Computer/LabVIEW.FGV/LabVIEW.FGV.Creat_Result.vi</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].itemID" Type="Ref">/Mein Computer/LabVIEW.FGV/LabVIEW.FGV.Store_ID.vi</Property>
				<Property Name="Source[11].type" Type="Str">VI</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[12].itemID" Type="Ref">/Mein Computer/LabVIEW.Service/LabVIEW.Service.Wait(ms).vi</Property>
				<Property Name="Source[12].type" Type="Str">VI</Property>
				<Property Name="Source[13].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[13].itemID" Type="Ref">/Mein Computer/LabVIEW.Service/LabVIEW.Service.Show_EXE_infos.vi</Property>
				<Property Name="Source[13].type" Type="Str">VI</Property>
				<Property Name="Source[14].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[14].itemID" Type="Ref">/Mein Computer/LabVIEW.Service/LabVIEW.Service.JSON_Input.vi</Property>
				<Property Name="Source[14].type" Type="Str">VI</Property>
				<Property Name="Source[15].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[15].itemID" Type="Ref">/Mein Computer/LabVIEW.Service/LabVIEW.Service.Create a local report file.vi</Property>
				<Property Name="Source[15].type" Type="Str">VI</Property>
				<Property Name="Source[16].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[16].itemID" Type="Ref">/Mein Computer/LabVIEW.Service/LabVIEW.Service.Create a failed report text from the report array.vi</Property>
				<Property Name="Source[16].type" Type="Str">VI</Property>
				<Property Name="Source[17].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[17].itemID" Type="Ref">/Mein Computer/LabVIEW.Service/LabVIEW.Service.Convert_a_list_of_API_Tokens_from_JSON_to_Tabel.vi</Property>
				<Property Name="Source[17].type" Type="Str">VI</Property>
				<Property Name="Source[18].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[18].itemID" Type="Ref">/Mein Computer/LabVIEW.Type Definitions/LabVIEW.HTTPs_Client.Command.ctl</Property>
				<Property Name="Source[18].type" Type="Str">VI</Property>
				<Property Name="Source[19].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[19].itemID" Type="Ref">/Mein Computer/LabVIEW.Type Definitions/LabVIEW.Main.Main_Program_Command.ctl</Property>
				<Property Name="Source[19].type" Type="Str">VI</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/Mein Computer/LabVIEW.Main/LabVIEW.Main.API_Test_TCP_Server.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[20].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[20].itemID" Type="Ref">/Mein Computer/LabVIEW.Type Definitions/LabVIEW.HTTPs_Client.Test_Group.Command.ctl</Property>
				<Property Name="Source[20].type" Type="Str">VI</Property>
				<Property Name="Source[21].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[21].itemID" Type="Ref">/Mein Computer/LabVIEW.Type Definitions/LabVIEW.Service.JSON_Input_Command.ctl</Property>
				<Property Name="Source[21].type" Type="Str">VI</Property>
				<Property Name="Source[22].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[22].itemID" Type="Ref">/Mein Computer/LabVIEW.HTTPs_Client/LabVIEW.HTTPs_Client.Test_Group/LabVIEW.HTTPs_Client.Test_Group.vi</Property>
				<Property Name="Source[22].type" Type="Str">VI</Property>
				<Property Name="Source[23].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[23].itemID" Type="Ref">/Mein Computer/LabVIEW.Elements/LabVIEW.Elements.Write API Name and Status.vi</Property>
				<Property Name="Source[23].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/Mein Computer/LabVIEW.HTTPs_Client/Test.csv</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/Mein Computer/LabVIEW.HTTPs_Client/Test_Document.txt</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/Mein Computer/LabVIEW.HTTPs_Client/Test_JPEG.jpeg</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/Mein Computer/LabVIEW.HTTPs_Client/iesy-gmbh-root.cer</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/Mein Computer/LabVIEW.HTTPs_Client/LabVIEW.Service.Connect_SNDB_with_API_by_HTTPs_Client.vi</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/Mein Computer/LabVIEW.HTTPs_Client/LabVIEW.HTTPs_Client.Handle_File.vi</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/Mein Computer/LabVIEW.Main/LabVIEW.Main.API_Test.vi</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/Mein Computer/LabVIEW.Main/LabVIEW.Main.Read_Test_Status.vi</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="TgtF_companyName" Type="Str">iesy GmbH</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_internalName" Type="Str">API_Test_TCP_Server</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 iesy GmbH</Property>
				<Property Name="TgtF_productName" Type="Str">API_Test_TCP_Server</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{91A3E35C-0FE8-443A-9667-D250A60F4A46}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">API_Test_TCP_Server</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Connect to SNDB Library" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{F88B8DC2-DE85-43F6-BCA9-AEC39BE2040C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Connect to SNDB Library</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">German</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Connect_to_SNDB</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C08A8213-A5A2-4E78-87DA-937EA3A2F238}</Property>
				<Property Name="Bld_version.build" Type="Int">23</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Destination[0].destName" Type="Str">Connect to SNDB Library.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/Connect_to_SNDB/Connect to SNDB Library.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Hilfsdatei-Verzeichnis</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/Connect_to_SNDB</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
				<Property Name="Source[0].itemID" Type="Str">{3D4CF634-ECD4-4656-AD8D-9B8A4E2470DF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/Mein Computer/LabVIEW.Library/Connect_to_SNDB_library.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/Mein Computer/LabVIEW.Library/Libray.Connect_to_SNDB_Command.ctl</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/Mein Computer/LabVIEW.Library/iesy-gmbh-root.cer</Property>
				<Property Name="Source[4].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[4].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/Mein Computer/builds</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="TgtF_companyName" Type="Str">iesy GmbH</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Connect to SNDB Library</Property>
				<Property Name="TgtF_internalName" Type="Str">Connect to SNDB Library</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 iesy GmbH</Property>
				<Property Name="TgtF_productName" Type="Str">Connect to SNDB Library</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A5496410-5760-4CC6-A517-AB277D500BF3}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Connect to SNDB Library.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
