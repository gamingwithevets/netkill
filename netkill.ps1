$version = "1.1.4"
$host.ui.RawUI.WindowTitle = "NetKill v$version - PowerShell Version"

Clear-Host
Write-Host " _   _ ______ _______`
`| \ `| `|  ____`|__   __`|██   ██ ██ ██      ██`
`|  \`| `| `|__     `| `|   ██  ██  ██ ██      ██`
`| . `` `|  __`|    `| `|   █████   ██ ██      ██`
`| `|\  `| `|____   `| `|   ██  ██  ██ ██      ██`
`|_`| \_`|______`|  `|_`|   ██   ██ ██ ███████ ███████"
Write-Host "NETSUPPORT SCHOOL CLIENT KILLER - v.$version - By GWE"
Write-Host "PowerShell Version`nProject on GitHub: https://github.com/gamingwithevets/netkill"
Write-Host "`nNOTES:"
Write-Host "This program only KILLS the client and does not uninstall the program"
Write-Host "from this computer."
Write-Host "This also means the client can be restarted."
Write-Host "`nPress any key to start the process."
[Console]::ReadKey() >$null

function Fail_Msg {
Write-Host "`nOops, looks like NetKill was unable to kill the NetSupport School`nClient. No worries, maybe try running the script again as admin?"
Exit_Prompt
}

function Success_Msg {
Write-Host "`nAll done! The NetSupport School Client should be terminated now.`nAlso, thanks for using NetKill! You can contribute to the project`nvia the link above."
Exit_Prompt
}

function Exit_Prompt {
Write-Host "`nPress any key to exit."
[Console]::ReadKey() >$null
}

Write-Host "`nKilling NetSupport School Client processes..."
taskkill /f /im client32.exe >$null 2>&1
if ($lastexitcode -eq 0) {Write-Host "Killed client32.exe."} else {Write-Host "Can't kill client32.exe!"}
taskkill /f /im runplugin.exe >$null 2>&1
if ($lastexitcode -eq 0) {Write-Host "Killed runplugin.exe."} else {Write-Host "Can't kill runplugin.exe!"}
Write-Host "`nChecking for running NetSupport School Client processes..."
tasklist /fi "ImageName eq client32.exe" /fo csv 2>$null | find /I """client32.exe""" >$null
$errlvclient = $lastexitcode
if ($errlvclient -eq 0) {Write-Host "client32.exe found!"} else {Write-Host "client32.exe not found!"}
tasklist /fi "ImageName eq runplugin.exe" /fo csv 2>$null | find /I """runplugin.exe""" >$null
$errlvplugin = $lastexitcode
if ($errlvplugin -eq 0) {Write-Host "runplugin.exe found!"} else {Write-Host "runplugin.exe not found!"}
if ($errlvclient -eq 0 -or $errlvplugin -eq 0) {Fail_Msg} else {Success_Msg}



