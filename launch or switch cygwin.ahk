; 2010-04-01
; launch or switch to Cygwin bash

#NoTrayIcon

if WinExist("ahk_class ConsoleWindowClass") and WinExist("Cygwin")
{
  WinActivate
}
Else
{
  Run "C:\Users\Public\Desktop\Cygwin.lnk"
  WinActivate
}
Return

ExitApp
