$version = "1.1.0"
$host.ui.RawUI.WindowTitle = "NetKill v.$version"

Clear-Host
Write-Host " _____ ______ _______ _  ___ _      _"
Write-Host "`| ._. `|  ____`|__   __`|K`|/K`|I`|L`|    `|L`|"
Write-Host "`| `| `| `| `|__     `| `|  `|K'K/`|I`|L`|    `|L`|"
Write-Host "`| `| `| `|  __`|    `| `|  `|K < `|I`|L`|    `|L`|"
Write-Host "`| `| `| `| `|____   `| `|  `|K.K\`|I`|L`|____`|L`|____"
Write-Host "`|_`| `|_`|______`|  `|_`|  `|K`|\K\I`|LLLLLL`|LLLLLL`|"
Write-Host "NETSUPPORT SCHOOL CLIENT KILLER - v.$version"
Write-Host "Project on GitHub: https://github.com/gamingwithevets/netkill"
Write-Host ""
Write-Host "NOTES:"
Write-Host "This program only KILLS the client and does not uninstall the program"
Write-Host "from this computer."
Write-Host "This also means the client can be restarted."
Write-Host ""
choice /n /m "Kill the NetSupport School Client? [Y/N] "
if ($lastexitcode -eq 2) {
Clear-Host
exit
}
Write-Host Killing NetSupport School Client processes...
taskkill /f /im client32.exe >nul 2>&1
if ($lastexitcode -eq 0) {
Write-Host Killed client32.exe.
} else {
Write-Host Can't kill client32.exe!
}
taskkill /f /im runplugin.exe >nul 2>&1
if ($lastexitcode -eq 0) {
Write-Host Killed runplugin.exe.
} else {
Write-Host Can't kill runplugin.exe!
}
Write-Host ""
Write-Host "All done! After exiting, if no error occurs, the NetSupport School Client"
Write-Host "will be terminated."
Write-Host "Also, thanks for using NetKill! You can contribute to the project via the link above."
Write-Host ""
Write-Host "Press any key to exit."
pause >nul
