@echo off
setlocal
setlocal enabledelayedexpansion
setlocal ENABLEEXTENSIONS
set KEY_NAME="HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\VideoLAN\VLC"
set VALUE_NAME=InstallDir




FOR /F "usebackq tokens=3*" %%A IN (`REG QUERY KEY_NAME /v %VALUE_NAME%`) DO (
    set appdir=%%A %%B
)


if defined appdir (
	echo %appdir%
    @echo Value Value = %appdir%
) else (
    @echo "%KEY_NAME:"=%\%VALUE_NAME%" not found.
)
endlocal