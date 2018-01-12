echo Vorgang läuft....
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath
cd ../
cd ../
cd Public
$DesktopPath = pwd
$Textdatei = "$DesktopPath\CorrectionTool.txt"
$lösung = get-item "HKCU:\Control Panel\Desktop" | get-ItemProperty | select WallPaper | format-wide | Out-String


"Aufgabe 1.5 | Hintergrundbild von Hans auf (img2.jpg)"|Out-File $Textdatei -Append
"Ergebnis:" |Out-File $Textdatei -Append
$lösung |Out-File $Textdatei -Append
