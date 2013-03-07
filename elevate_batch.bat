:: Ensure ADMIN Privileges
    :: adaptation of https://sites.google.com/site/eneerge/home/BatchGotAdmin and http://stackoverflow.com/q/4054937
    @echo off
    :: Check for ADMIN Privileges
    >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
    if '%errorlevel%' NEQ '0' (
        REM Get ADMIN Privileges
        echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
        echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
        "%temp%\getadmin.vbs"
        del "%temp%\getadmin.vbs"
        exit /B
    ) else (
        REM Got ADMIN Privileges
        pushd "%cd%"
        cd /d "%~dp0"
        @echo on
    )