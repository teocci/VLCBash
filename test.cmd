@echo off
setlocal
setlocal enabledelayedexpansion
for /f "usebackq tokens=3*" %%a in (`reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\VideoLAN\VLC" /s`) do (
  set _vlc_path=%%a %%b
  echo !_vlc_path!
  )
endlocal