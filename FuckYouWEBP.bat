@echo off
cd /d "%~dp0" > nul
goto :start

:start
rem Change "5" to how long, in seconds, you want the program to take between checking for a shitty webp file
rem Default is 5 seconds
TIMEOUT 5
IF EXIST "%USERPROFILE%\Pictures\*.webp" (
  goto :convert
) ELSE (
  goto :start
)

:convert
for %%# in (%USERPROFILE%\Pictures\*.webp) do set "file_name=%%~nx#"
convert "%USERPROFILE%\Pictures\*.webp" "%USERPROFILE%\Pictures\%file_name%.jpg"
DEL /Q "%USERPROFILE%\Pictures\*.webp"
goto :start
