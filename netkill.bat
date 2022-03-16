@echo off

set version=1.0.1

title NetKill v.%version%

cls
echo NETKILL - NETSUPPORT SCHOOL KILLER v.%version%
echo GitHub Repo: https://github.com/gamingwithevets/netkill
echo.
echo Killing NetSupport School...
taskkill /f /im client32.exe >nul 2>&1
if %errorlevel% == 0 (echo Killed client32.exe.) else (echo Can't kill client32.exe!)
taskkill /f /im runplugin.exe >nul 2>&1
if %errorlevel% == 0 (echo Killed runplugin.exe.) else (echo Can't kill runplugin.exe!)
echo.
echo All done! After the program terminates, NetSupport School should be terminated
echo if no error occurs.
echo Press any key to exit.
pause >nul
cls
