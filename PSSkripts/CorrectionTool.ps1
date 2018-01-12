$Benutzer = Get-LocalGroupMember Benutzer | select Name | out-string
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath
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
"Aufgabe 1.3 | Benutzerkonto Peter erstellen"|Out-File $Textdatei -append
"Ergebnis: Das Konto ist erstellt wenn der restliche Teil des Skripts erfolgreich ausgeführt wurde." |Out-File $Textdatei -append
""|Out-File $Textdatei -Append

$User ="desktop-9knatht\hans"
$Password = "1234" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Dateiendung_HANS.ps1"
Start-Sleep -second 2

$User ="desktop-9knatht\peter"
$Password = "Peter4go" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Dateiendung_PETER.ps1"
Start-Sleep -second 2
""|Out-File $Textdatei -Append

$User ="desktop-9knatht\hans"
$Password = "1234" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Skript.ps1"

Start-Sleep -second 2

$User ="desktop-9knatht\peter"
$Password = "Peter4go" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Netzwerk_PETER.ps1"

Start-Sleep -second 4
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath
cd ../
"Aufgabe 4.1 | LibreOffice: Das Niederländische Wörterbuch (nide.dic)" |Out-File $Textdatei -append
"Ergebnis:"|Out-File $Textdatei -append
cd $DesktopPath
cd ../
cd AppData\Roaming\LibreOffice\4\user\wordbook
$WortB = Get-ChildItem | Get-ItemProperty | select Name | format-list
$WortB |Out-File $Textdatei -append


"Aufgabe 4.3 | LibreOffice: Standard-Pfad für Dokumente C:\Daten\Dokumente" |Out-File $Textdatei -append
"Ergebnis:"|Out-File $Textdatei -append
cd $DesktopPath
cd ../
cd AppData\Roaming\LibreOffice\4\user
$Inhalt = (Get-Content registrymodifications.xcu)[250] |Out-String

$Inhalt.Substring($Inhalt.IndexOf("<value>") + 15).Substring(0, $Inhalt.Substring($Inhalt.IndexOf("<value>") + 15).IndexOf("</value>")) | out-File $Textdatei -Append

""|Out-File $Textdatei -Append

$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
cd $DesktopPath
cd ../
$User ="desktop-9knatht\hans"
$Password = "1234" | ConvertTo-SecureString -AsPlainText -Force
$MyCredential = New-Object System.Management.Automation.PSCredential($User,$Password)
Start-Process powershell.exe -Credential $MyCredential -NoNewWindow -ArgumentList "-File C:\Users\Public\Aufgabe6_HANS.ps1"
Start-Sleep -Seconds 2 


cls
Write-Host "Vorgang beendet..."
Write-Host "Das Ergebnis kannst du im File CorrectionTool.txt einsehen, welches auf deinem Desktop liegt."


