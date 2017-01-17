set-location c:\
#Black, DarkBlue, DarkGreen, DarkCyan, DarkRed, DarkMagenta, DarkYellow, Gray, DarkGray, Blue, Green, Cyan, Red, Magenta, Yellow, White
$shell = $Host.UI.RawUI
$shell.BackgroundColor="Black"
$shell.ForegroundColor="Green"

#added notepad alias
new-item alias:np -value C:\Windows\System32\notepad.exe

$width = ($Host.UI.RawUI.WindowSize.Width - 2 - $(Get-Location).ToString().Length)

Clear-Host
try {
Add-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction Stop
Write-Host SharePoint snapin loaded. -ForegroundColor White
} 
catch 
{
Write-Host Could NOT load SharePoint snapin. -ForegroundColor Red
}


