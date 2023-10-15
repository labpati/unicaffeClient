; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "UniCafe"
#define MyAppVersion "Beta"
#define MyAppPublisher "UNILAB - Universidade da Integra��o Internacional da Lusofonia Afro-Brasileira"
#define MyAppURL "http://www.unilab.edu.br/"
#define MyAppExeName "UniCafeClient.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5A8261FA-E5F0-4E9C-8DCD-5B6A24B0C5ED}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=.\LICENSE.txt
InfoBeforeFile=.\NOTICE.txt
InfoAfterFile=.\depois.txt
OutputBaseFilename=setupUniCaffe32
Compression=lzma
SolidCompression=yes

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked


[Files]
Source: ".\UniCafeClient.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\papel-de-parede.jpg"; DestDir:"C:\Windows\Web\Wallpaper\Windows"; Flags: ignoreversion;
Source: ".\target\unicafe-update.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\config.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\permitidos.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\install.bat"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon


[Registry]
;loga com essa senha
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"; ValueType: string; ValueName: "DefaultUserName"; ValueData: ".\unicafe"; Flags: uninsdeletekey
;Loga com esse usuario
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"; ValueType: string; ValueName: "DefaultPassword"; ValueData: "unicafe@unilab"; Flags: uninsdeletekey
;Loga automatico
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"; ValueType: string; ValueName: "AutoAdminLogon"; ValueData: "1"; Flags: uninsdeletekey
;Inicia automaticamente
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "unicafe"; ValueData: "{app}\UniCafeClient.exe"; Flags: uninsdeletekey 
;N�o pergunte se pode me abrir.
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"; ValueType: string; ValueName: "unicafe"; ValueData: "{app}\UniCafeClient.exe"; Flags: uninsdeletekey 
;N�o pergunte se pode me abrir.
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"; ValueType: dword; ValueName: "ConsentPromptBehaviorAdmin"; ValueData: "00"; Flags: uninsdeletekey 
;Roda como administrador
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers"; ValueType: string; ValueName: "{app}\UniCafeClient.exe"; ValueData: "RUNASADMIN"; Flags: uninsdeletekey 


[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
;cria um usuario
;Filename: {sys}\cmd.exe; Parameters: "/C net user unicafe unicafe@unilab /add /expires:never /passwordchg:no"; Flags: nowait
;poe como administrador. 
;Filename: {sys}\cmd.exe; Parameters: "/C net localgroup administradores unicafe  /add"; Flags: nowait; 
;Instalar servico
Filename: "{app}\install.bat"; Parameters: "{app}"