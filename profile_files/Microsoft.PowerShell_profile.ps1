set-location c:\
#Black, DarkBlue, DarkGreen, DarkCyan, DarkRed, DarkMagenta, DarkYellow, Gray, DarkGray, Blue, Green, Cyan, Red, Magenta, Yellow, White
$shell = $Host.UI.RawUI
$shell.BackgroundColor="Black"
$shell.ForegroundColor="Green"

#copies $lineNumber commands back in the clipboard
#DEFAULT (with no parameters) copies the last executed command into clipboard
function cll ($lineNumber = 1) {
	(Get-History)[-1 * $lineNumber].CommandLine | clip
}

#BEGIN aliases

new-item alias:npp -value "C:\Program Files (x86)\Notepad++\notepad++.exe"

#END aliases

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

