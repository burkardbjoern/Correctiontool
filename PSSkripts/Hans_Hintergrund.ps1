echo Vorgang läuft....
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath
cd ../
cd ../
cd Public
$DesktopPath = pwd
$Textdatei = "$DesktopPath\CorrectionTool.txt"
"Aufgabe 1.5 | Hintergrundbild"|Out-File $Textdatei -append
"Hans:"|Out-File $Textdatei -append
"-Hintergrundbild (img2):"|Out-File $Textdatei -append
$Hintergrund = get-item "HKCU:\Control Panel\Desktop" | Get-ItemProperty | select Wallpaper
$Hintergrund | Out-File $Textdatei -append