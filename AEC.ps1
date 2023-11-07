# Script Name:                  Automated Endpoint Configuration
# Author:                       Heraldo Morales
# Date of latest revision:      11/06/2023
# Purpose:                      Understand how automated Powershell commands can help ease a task


#This command enables file and printer sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

#This command allows ICMP traffic
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 

#This command allows RDP
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

#This command removes bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

#This command helps enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All


#This command disables SMBv1

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force


#These are all the one liners that will help do the commands required to complete the task
