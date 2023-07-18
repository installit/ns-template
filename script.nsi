!include "MUI.nsh"
!define MUI_ABORTWARNING
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

Name "RepoName v0.0.0"
InstallDir "$PROGRAMFILES\repo_author\repo_name"
ShowInstDetails show

Section "RepoName"
    SetOutPath $INSTDIR
    ; Add the files!
SectionEnd
Section
    SetOutPath $INSTDIR
    WriteUninstaller "$INSTDIR\uninstall.exe"
    CreateShortcut "$SMPROGRAMS\RepoName.lnk" "$INSTDIR\main.exe"
    CreateShortcut "$SMPROGRAMS\RepoName Uninstaller.lnk" "$INSTDIR\uninstall.exe"
SectionEnd
Section "uninstall"
    Delete "$INSTDIR\uninstall.exe"
    Delete "$SMPROGRAMS\RepoName.lnk"
    Delete "$SMPROGRAMS\RepoName Uninstaller.lnk"
    Delete $INSTDIR
SectionEnd
