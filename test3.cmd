@echo off
setlocal
setlocal enabledelayedexpansion
setlocal ENABLEEXTENSIONS
set KEY_NAME="HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\VideoLAN\VLC"
set VALUE_NAME=InstallDir

for /f "usebackq tokens=1-2*" %%a in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\VideoLAN\VLC" /s`) do (
    set ValueName=%%a
    set ValueType=%%b
    set ValueValue=%%c %%d

    set _vlc_path=%%c %%d
    echo !_vlc_path!

    if defined ValueName (
        @echo Value Name = %ValueName%
        @echo Value Type = %ValueType%
        @echo Value Value = %ValueValue%

        @echo Value Name = !ValueName!
        @echo Value Type = !ValueType!
        @echo Value Value = !ValueValue!
    ) else (
        @echo "%KEY_NAME:"=%\%VALUE_NAME%" not found.
    )
)
endlocal
