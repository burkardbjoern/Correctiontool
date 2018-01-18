Add-Type -Path "c:\temp\myAPI.dll"
$a = New-Object myAPI.myLib
$s = $a.GetHello()
$s