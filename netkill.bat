@echo off

set version=1.1.3

title NetKill v%version%

chcp 65001
color
cls

echo  _   _ ______ _______
echo ^| \ ^| ^|  ____^|__   __^|██   ██ ██ ██      ██
echo ^|  \^| ^| ^|__     ^| ^|   ██  ██  ██ ██      ██
echo ^| . ` ^|  __^|    ^| ^|   █████   ██ ██      ██
echo ^| ^|\  ^| ^|____   ^| ^|   ██  ██  ██ ██      ██
echo ^|_^| \_^|______^|  ^|_^|   ██   ██ ██ ███████ ███████
echo NETSUPPORT SCHOOL CLIENT KILLER - v%version% - By GWE
echo Project on GitHub: https://github.com/gamingwithevets/netkill
echo:
echo NOTES:
echo This program only KILLS the client and does not uninstall the program
echo from this computer.
echo This also means the client can be restarted.
echo:
echo Press any key to start the process.
pause >nul

echo Killing NetSupport School Client processes...
taskkill /f /im client32.exe >nul 2>&1
if %errorlevel% == 0 (echo Killed client32.exe.) else (echo Can't kill client32.exe!)
taskkill /f /im runplugin.exe >nul 2>&1
if %errorlevel% == 0 (echo Killed runplugin.exe.) else (echo Can't kill runplugin.exe!)
echo:
echo Checking for running NetSupport School Client processes...
tasklist /fi "ImageName eq client32.exe" /fo csv 2>nul | find /I "client32.exe" >nul
set "errlvclient=%errorlevel%"
if %errlvclient% == 0 (echo client32.exe found!) else (echo client32.exe not found!)
tasklist /fi "ImageName eq runplugin.exe" /fo csv 2>nul | find /I "runplugin.exe" >nul
set "errlvplugin=%errorlevel%"
if %errlvplugin% == 0 (echo runplugin.exe found!) else (echo runplugin.exe not found!)
if %errlvclient% == 0 (goto fail)
if %errlvplugin% == 0 (goto fail)
echo.

echo All done! The NetSupport School Client should be terminated now.
echo Also, thanks for using NetKill! You can contribute to the project
echo via the link above.
goto exit

:fail
echo Oops, looks like NetKill was unable to kill the NetSupport School
echo Client. No worries, maybe try running the script again as admin?

:exit
echo:
echo Press any key to exit.
pause >nul
cls
exit /b