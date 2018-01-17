$Solitaire=Get-AppxPackage | select Name | where Name -Like *Solitaire* | out-string
$office=Get-AppxPackage | select Name | where Name -Like *Office holen* | out-string
echo Vorgang läuft....
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath
cd ../
cd ../
cd Public
$DesktopPath = pwd
$Textdatei = "$DesktopPath\CorrectionTool.txt"

"Aufgabe 6 | Bei Hans die App Microsoft Solitaire und Office entfernen"|Out-File $Textdatei -append
"Ergebnis:"|Out-File $Textdatei -append
if($Solitaire -eq "Microsoft.MicrosoftSolitaireCollection")
{
    "Die App Microsoft Solitaire ist vorhanden"|Out-File $Textdatei -append
}
else
{
    "Die App Microsoft Solitaire ist deinstalliert"|Out-File $Textdatei -append
}
if($office -eq "Office holen")
{
    "Die App Office holen ist vorhanden"|Out-File $Textdatei -append
}
else
{
    "Die App Office holen ist deinstalliert"|Out-File $Textdatei -append
}