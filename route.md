## server-1 & 2 
New-NetFirewallRule -DisplayName "Allow ICMP" -Protocol ICMPV4
tracert webvm


## server 3
Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\ -Name IpEnableRouter -Value 1