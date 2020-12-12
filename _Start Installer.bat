@echo off
cd /d %~dp0 > nul
nircmd elevate "installer.bat"
exit