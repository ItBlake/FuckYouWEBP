@echo off
cd /d %~dp0 > nul
goto :install

:install
echo.
echo Installing ImageMagik...
echo.
start /wait ImageMagikInstaller.exe
TIMEOUT 1 > nul
echo.
echo ImageMagik Installed!
echo.
echo Copying files...
echo.
mkdir "c:\Program Files\FuckYouWEBP" > nul
copy /y "startFuckYouWEBP.bat" "c:\Program Files\FuckYouWEBP" > nul
copy /y "nircmd.exe" "c:\Program Files\FuckYouWEBP" > nul
copy /y "convert.exe" "c:\Program Files\FuckYouWEBP" > nul
copy /y "FuckYouWEBP.bat" "c:\Program Files\FuckYouWEBP" > nul
TIMEOUT 2 > nul
echo Files copied!
echo.
echo Adding FuckYouWEBP to startup...
CreateShortcut "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startFuckYouWEBP.lnk" "c:\Program Files\FuckYouWEBP\startFuckYouWEBP.bat"
exit
TIMEOUT 1 > nul
echo.
echo Added FuckYouWEBP to startup
TIMEOUT 1 > nul
echo.
echo FuckYouWEBP Installed!
echo.
echo Press any key to quit the installer!
pause > nul
start "c:\Program Files\FuckYouWEBP\startFuckYouWEBP.bat"
exit
