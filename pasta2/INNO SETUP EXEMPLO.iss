; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "UniCafeClient"
#define MyAppVersion "1.0"
#define MyAppPublisher "UNILAB"
#define MyAppURL "http://unilab.edu.br"
#define MyAppExeName "UniCafeClient.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C7B19998-F455-4CA8-B743-23BE5552BE5F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
InfoBeforeFile=C:\pasta\leia.txt
InfoAfterFile=C:\pasta\leia.txt
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\pasta\UniCafeClient.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\pasta\adminClient.BAT"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\pasta\servidor.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\pasta\cliente.jar"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


;REG add HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System /v DisableTaskMgr /t REG_DWORD /d 1 /f

[Registry]
Root: HKLM; SubKey: "Software\Microsoft\Windows\CurrentVersion\Policies\System"; ValueType: dword; ValueName: DisableTaskMgr; ValueData: 1
