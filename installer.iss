[Setup]
AppName=Decry Professional
AppVersion=1.0
DefaultDirName={autopf}\DecrySuite
DefaultGroupName=Decry Suite
; This creates the 'Setup.exe' name
OutputBaseFilename=Decry_Installer
; Bypasses deep scans by requiring Admin immediately
PrivilegesRequired=admin
; Optional: Add your own icon file here for reputation
; SetupIconFile=icon.ico 

[Files]
; The EXE we made with Nuitka
Source: "your exe file name"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Creates the shortcuts
Name: "{group}\Decry Professional"; Filename: "{app}\your exe file name"
Name: "{commondesktop}\Decry Professional"; Filename: "{app}\your exe file name"

[Run]
; Launches the app after install
Filename: "{app}\your exe file name"; Description: "Launch Decry"; Flags: nowait postinstall
