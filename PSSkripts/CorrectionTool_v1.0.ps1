$endung=get-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" | get-ItemProperty | select HideFileExt | format-wide | out-string
$ipv6=Get-NetAdapterBinding | Select DisplayName,Enabled | where DisplayName -like "Internetprotokoll, Version 6 (TCP/IPv6)" | out-string
$IPGatSub=Ipconfig | sls Gate,Sub,IPv4 | Out-String
$DNS=Get-DnsClientServerAddress | select ServerAddresses -First 1 |format-wide | out-string
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
$Textdatei = "$DesktopPath\CorrectionTool.txt"
echo "------------------------------"|Out-File $Textdatei
echo "-----CORRECTION TOOL V1.0-----"|Out-File $Textdatei -append
echo "------------------------------"|Out-File $Textdatei -append
"Aufgabe 1.1 | Computername auf PC-Hans"|Out-File $Textdatei -append
"Ergebnis:" |Out-File $Textdatei -append
"$env:computername" |Out-File $Textdatei -append

"Aufgabe 1.4 | Dateiendungen im Dateiexplorer anzeigen lassen"|Out-File $Textdatei -append
"Ergebnis:"|Out-File $Textdatei -append

if($endung -match "0")
{
   "Die Dateiendungen sind eingeschalten"|Out-File $Textdatei -append
}
else
{
   "Die Dateiendungen sind ausgeschalten"|Out-File $Textdatei -append 
}

"Aufgabe 2.1 | IPv6 Protokoll deaktivieren"|Out-File $Textdatei -append
"Ergebnis: $ipv6"|Out-File $Textdatei -append
"Aufgabe 2.2 | IP-Adresse: 172.16.100.100/ Subnetmaske: 255.255.255.0/ Gateway: 172.16.100.1"|Out-File $Textdatei -append
$IPGatSub|Out-File $Textdatei -append
"DNS:"|Out-File $Textdatei -append
$DNS|Out-File $Textdatei -append


cls
Write-Host "Vorgang beendet..."
Write-Host "Das Ergebnis kannst du im File CorrectionTool.txt einsehen, welches auf deinem Desktop liegt."