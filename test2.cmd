@echo off
setlocal
setlocal enabledelayedexpansion
setlocal ENABLEEXTENSIONS
set KEY_NAME="HKEY_CURRENT_USER\Software\Microsoft\Command Processor"
set VALUE_NAME=DefaultColor

FOR /F "usebackq skip=2 tokens=1-4" %%A IN (`REG QUERY %KEY_NAME% /v %VALUE_NAME% 2^>nul`) DO (
    set ValueName=%%A
    set ValueType=%%B
    set ValueValue=%%C %%D
)

if defined ValueName (
    @echo Value Name = %ValueName%
    @echo Value Type = %ValueType%
    @echo Value Value = %ValueValue%
) else (
    @echo "%KEY_NAME:"=%\%VALUE_NAME%" not found.
)
endlocal