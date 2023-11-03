# Script Name:                  Log Retrieval
# Author:                       Heraldo Morales
# Date of latest revision:      00/00/0000
# Purpose:                      Today's purpose is to observe and document System Process Commands




# This command will print all active process ordered by highest CPU time consumption at the top

Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize


#This command is meant to show all active processes ordered by highest PIN (Process Identification Number)

Get-Process | Sort-Object -Property Id -Descending | Format-Table -AutoSize


#This command prints the top 5 active process odered by highest WSK (Working Set) at the top

Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5 | Format-Table -AutoSize


#This command will start a browser process, opening google chrome and have it open https://owasp.org/www-project-top-ten/.

Start-Process "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://owasp.org/www-project-top-ten/"



#This command will open the Notepad ten times through a loop

for ($i = 1; $i -le 10; $i++) {
    Start-Process notepad
}

#The following command will allow user to interact as soon as the process is completed.
#The user will then be able to close all instances of the notepad with the press of an Enter button.

# Wait for user to interact
Write-Host "Notepads started. Press Enter to close them."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# Close all instances of Notepad
Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { $_.CloseMainWindow() }


# For the following command, the application itself must be opened to use the command that will allow you to find the PID of Chrome

Get-Process -name "chrome" | Select-Object Name, Id

# The next command is the command that will kill the PID in you will replace, <PID? with the PID number displayed from the previous command

Stop-Process -Id <PID>


#Done







