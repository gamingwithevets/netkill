@echo off

set version=1.1.0

title NetKill v.%version%

cls

echo  _____ ______ _______ _  ___ _      _
echo ^| ._. ^|  ____^|__   __^|K^|/K^|I^|L^|    ^|L^|
echo ^| ^| ^| ^| ^|__     ^| ^|  ^|K'K/^|I^|L^|    ^|L^|
echo ^| ^| ^| ^|  __^|    ^| ^|  ^|K < ^|I^|L^|    ^|L^|
echo ^| ^| ^| ^| ^|____   ^| ^|  ^|K.K\^|I^|L^|____^|L^|____
echo ^|_^| ^|_^|______^|  ^|_^|  ^|K^|\K\I^|LLLLLL^|LLLLLL^|
echo NETSUPPORT SCHOOL CLIENT KILLER - v.%version%
echo Project on GitHub: https://github.com/gamingwithevets/netkill
echo.
echo NOTES:
echo This program only KILLS the client and does not uninstall the program
echo from this computer.
echo This also means the client can be restarted.
echo.
choice /n /m "Kill the NetSupport School Client? [Y/N] "
if %errorlevel% == 2 (cls&exit /b)
echo Killing NetSupport School Client processes...
taskkill /f /im client32.exe >nul 2>&1
if %errorlevel% == 0 (echo Killed client32.exe.) else (echo Can't kill client32.exe!)
taskkill /f /im runplugin.exe >nul 2>&1
if %errorlevel% == 0 (echo Killed runplugin.exe.) else (echo Can't kill runplugin.exe!)
echo.
echo All done! After exiting, if no error occurs, the NetSupport School Client
echo will be terminated.
echo Also, thanks for using NetKill! You can contribute to the project via the link above.
echo.
echo Press any key to exit.
pause >nul
cls
