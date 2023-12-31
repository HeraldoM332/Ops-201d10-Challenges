# Script Name:                  Log Retrieval
# Author:                       Heraldo Morales
# Date of latest revision:      00/00/0000
# Purpose:                      Explain the commands that do tasks on Powershell 


#Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-EventLog -LogName System -After '11/2/2023 20:00:00' -Before '11/1/2023 20:00:00' > Desktop/last_24.txt


#Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-EventLog -LogName System -EntryType error > Desktop/errors.txt


#Print to the screen all events with ID of 16 from the System event log.
Get-EventLog -LogName System -InstanceId 16



#Print to the screen the most recent 20 entries from the System event log.’
Get-EventLog -LogName system -Newest 20



#Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-EventLog -LogName System -Newest 500 | Format-Table -Wrap


