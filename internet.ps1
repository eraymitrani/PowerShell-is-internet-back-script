function isOnline
{
$bool=test-connection 8.8.8.8 -quiet
while($bool -ne 1)
{
$bool=test-connection 8.8.8.8 -quiet
}
$wshell=New-Object -ComObject Wscript.Shell
$wshell.Popup("You are online.",0,"Message",0x1)
}
isOnline
