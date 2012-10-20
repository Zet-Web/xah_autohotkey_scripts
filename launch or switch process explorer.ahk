; 2011-01-01
; launch or switch to Process Explorer

#NoTrayIcon

if WinExist("ahk_class PROCEXPL")
{
  WinActivate
}
Else
{
  Run "C:\Users\h3\apps\process explorer v14-12\procexp.exe"

  WinActivate
}
Return

ExitApp
