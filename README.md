**NetKill** is a NetSupport School killer - basically a program to stop NetSupport School on any computer connected to a NetSupport School host computer.  
Compatible with Windows XP and above.

# Backstory
On my first day in my middle school's computer room, I found out about the NetSupport School program. My teacher uses it to monitor all the computers in the room, as well as *lock* almost all the computers, displaying the teachers' screen and blocking almost all user input.

So I try to find a way to kill this crapware on the student computers. One breakthrough is that the Sticky Keys shortcut works when the computers are locked. Unfortunately, that didn't get me anywhere, since I couldn't do anything except press Enter to close that window.

And then I thought of... **Task Manager**! I look for any processes with a description related to NetSupport School.
Sure enough, I found one - `runplugin.exe`. Unfortunately it keeps respawning when I end the process.  
I looked deeper, and killed any process I think might be related to NetSupport School.  
And I found another - `client32.exe`. After killing it, the `runplugin.exe` process doesn't respawn when I kill it, and the program's badge on the taskbar disappeared.  
I did it - I found the processes that are responsible with this crapware.  
And I decided to write an automated script that does it for you.

# Killing Time
It's time to put this program to the test. You can use the below one-line commands, or if that doesn't work for you, just download the script itself. It's free!
## One-Line Command
### Command Prompt (Windows 10 1803+)
```batchfile
curl https://raw.githubusercontent.com/gamingwithevets/netkill/main/netkill.bat > netkill.bat&netkill.bat&del netkill.bat&cls
```
### Windows PowerShell (3.0+)
```powershell
Invoke-WebRequest https://raw.githubusercontent.com/gamingwithevets/netkill/main/netkill.ps1 | Select-Object -Expand Content > netkill.ps1; Get-Content .\netkill.ps1 | Invoke-Expression; del netkill.ps1; Clear-Host
```
