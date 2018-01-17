$Benutzer = Get-LocalGroupMember Benutzer | select Name | out-string
$DesktopPath1 = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath1
cd ../
cd ../
cd Public
$DesktopPath = pwd
$Textdatei = "$DesktopPath\CorrectionTool.txt"

echo "------------------------------"|Out-File $Textdatei
echo "-----CORRECTION TOOL V1.0-----"|Out-File $Textdatei -append
echo "------------------------------"|Out-File $Textdatei -append


"Aufgabe 1.1 | Computername auf PC-Hans ändern"|Out-File $Textdatei -append
"Ergebnis:" |Out-File $Textdatei -append
"$env:computername" |Out-File $Textdatei -append
""|Out-File $Textdatei -Append
"Aufgabe 1.2 | Benutzerkonto Hans erstellen"|Out-File $Textdatei -append
"Ergebnis: Das Konto ist erstellt wenn der restliche Teil des Skripts erfolgreich ausgeführt wurde." |Out-File $Textdatei -append
""|Out-File $Textdatei -Append
 

$User ="pc-hans\hans"
$Password = "Hans4ict" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Dateiendung_HANS.ps1"
Start-Sleep -second 5


$User ="pc-hans\sohn peter"
$Password = "Peter4go" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Dateiendung_PETER.ps1"
Start-Sleep -second 5
""|Out-File $Textdatei -Append

$User ="pc-hans\hans"
$Password = "Hans4ict" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Hans_Hintergrund.ps1"
Start-Sleep -second 5
""|Out-File $Textdatei -Append

$User ="pc-hans\sohn peter"
$Password = "Peter4go" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Skript.ps1"
Start-Sleep -second 5


$User ="pc-hans\sohn peter"
$Password = "Peter4go" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Netzwerk_PETER.ps1"
Start-Sleep -second 7

"Aufgabe 3 | Libre Office wurde für sie geöffnet, bitte Korrigieren"|Out-File $Textdatei -append

""|Out-File $Textdatei -Append
cd $DesktopPath1
cd ../
echo Bald Fertig!!
$User ="pc-hans\hans"
$Password = "Hans4ict" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\6HANS.ps1"
Start-Sleep -Seconds 5 


cls
Write-Host "Vorgang beendet..."
Write-Host "Das Ergebnis kannst du im File CorrectionTool.txt einsehen(C:\Users\Public)."

Start-Process soffice.exe
Start-Sleep -Seconds 1
notepad $Textdatei





