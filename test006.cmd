
@echo off
setlocal
setlocal enabledelayedexpansion
setlocal ENABLEEXTENSIONS
set KEY_NAME="HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\VideoLAN\VLC"
set VALUE_NAME=InstallDir

FOR /F "tokens=2*" %%A IN ('REG query "%KEY_NAME%" /v "%VALUE_NAME%"') DO (set pInstallDir=%%B)

if defined pInstallDir (
	echo %pInstallDir%
    @echo Value Value = %pInstallDir%
) else (
    @echo "%KEY_NAME:"=%\%VALUE_NAME%" not found.
)
endlocal