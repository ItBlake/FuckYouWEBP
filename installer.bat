@echo off
cd /d %~dp0 > nul
goto :test
goto :install

:install
echo.
echo Copying files...
echo.
mkdir "c:\Program Files\FuckYouWEBP" > nul
copy "startFuckYouWEBP.bat" "c:\Program Files\FuckYouWEBP" > nul
copy "nircmd.exe" "c:\Program Files\FuckYouWEBP" > nul
copy "convert.exe" "c:\Program Files\FuckYouWEBP" > nul
copy "FuckYouWEBP.bat" "c:\Program Files\FuckYouWEBP" > nul
TIMEOUT 2 > nul
echo Files copied!
echo.
echo Adding FuckYouWEBP to startup...
:test
CreateShortcut "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startFuckYouWEBP.lnk" "c:\Program Files\FuckYouWEBP\startFuckYouWEBP.bat"
exit
TIMEOUT 1 > nul
echo.
echo Added FuckYouWEBP to startup
TIMEOUT 1 > nul
echo.
echo FuckYouWEBP Installed!
echo.goto :startnow

:startnow
start "c:\Program Files\FuckYouWEBP\startFuckYouWEBP.bat"
exit