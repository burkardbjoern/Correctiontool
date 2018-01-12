$ipv6=Get-NetAdapterBinding | Select DisplayName,Enabled | where DisplayName -like "Internetprotokoll, Version 6 (TCP/IPv6)" | out-string
$IPGatSub=Ipconfig | sls Gate,Sub,IPv4 | Out-String
$DNS=Get-DnsClientServerAddress | select ServerAddresses -First 1 |format-wide | out-string
echo Vorgang läuft....
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath
cd ../
cd ../
cd Public
$DesktopPath = pwd
$Textdatei = "$DesktopPath\CorrectionTool.txt"

"Aufgabe 2.1 | IPv6 Protokoll deaktivieren"|Out-File $Textdatei -append
"Ergebnis: $ipv6"|Out-File $Textdatei -append
"Aufgabe 2.2 | IP-Adresse: 172.16.100.100/ Subnetmaske: 255.255.255.0/ Gateway: 172.16.100.1"|Out-File $Textdatei -append
$IPGatSub|Out-File $Textdatei -append
"DNS:"|Out-File $Textdatei -append
$DNS|Out-File $Textdatei -append