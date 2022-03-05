$version = "1.0"
$host.ui.RawUI.WindowTitle = "Netkill v.$version"

Clear-Host
Write-Host "NETKILL - NETSUPPORT SCHOOL KILLER v.$version"
Write-Host "GitHub Repo: https://github.com/gamingwithevets/netkill"
Write-Host ""
Write-Host Killing NetSupport School...
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
Write-Host.
Write-Host "All done! After closing this window, NetSupport School should be terminated."
Write-Host "Press any key to exit."
pause >nul
