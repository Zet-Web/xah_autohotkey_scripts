; 2011-03-31
; from http://stackoverflow.com/questions/131955/keyboard-shortcut-to-paste-clipboard-content-into-command-prompt-window-win-xp


; Redefine only when the active window is a console window 
#IfWinActive ahk_class ConsoleWindowClass

; Close Command Window with Ctrl+w
$^w::
WinGetTitle sTitle
If (InStr(sTitle, "-")=0) { 
	Send EXIT{Enter}
} else {
	Send ^w
}

return 


; Ctrl+up / Down to scroll command window back and forward
^Up::
Send {WheelUp}
return

^Down::
Send {WheelDown}
return


; Paste in command window.
^V::
StringReplace clipboard2, clipboard, \r\n, \n, All
SendInput {Raw}%clipboard2%
return


