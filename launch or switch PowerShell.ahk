; 2010-04-01
; launch or switch to PowerShell ISE

#NoTrayIcon

IfWinExist Windows PowerShell ISE
{
  WinActivate
}
Else
{
MsgBox, Not running. Launch it first.

;   Run "%SystemRoot%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe"
; ;  Run "c:/Users/xah/AppData/Roaming/Microsoft/Internet Explorer/Quick Launch/Windows PowerShell ISE.lnk"
;   WinWait Windows PowerShell ISE
;   WinActivate
}

Return

ExitApp