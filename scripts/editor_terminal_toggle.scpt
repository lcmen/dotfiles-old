tell application "System Events"
	set currentApp to name of first application process whose frontmost is true
end tell

if currentApp is "Terminal" then
	set switchToApp to "Sublime Text"
else if currentApp is "Sublime Text" then
	set switchToApp to "Terminal"
else
	set switchToApp to "Sublime Text"
end if

if switchToApp is not "" then
	tell application switchToApp to activate
end if
