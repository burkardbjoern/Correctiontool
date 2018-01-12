echo Vorgang läuft....
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath
cd ../
cd ../
cd Public
$DesktopPath = pwd
$Textdatei = "$DesktopPath\CorrectionTool.txt"
"Peter:" |Out-File $Textdatei -Append
$endung=get-item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" | get-ItemProperty | select HideFileExt | format-wide | out-string

if($endung -match "0")
{
   "Die Dateiendungen sind eingeschalten"|Out-File $Textdatei -append
}
else
{
   "Die Dateiendungen sind ausgeschalten"|Out-File $Textdatei -append 
}