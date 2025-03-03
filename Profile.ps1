# Enable ctrl+d to close shell
Set-PSReadlineKeyHandler -Key ctrl+d -Function DeleteCharOrExit

# History show full history not session history
Remove-Item Alias:history
function history { Get-Content (Get-PSReadLineOption).HistorySavePath }
