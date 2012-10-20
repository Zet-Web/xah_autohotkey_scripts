; 2010-09-14, 2011-06-27
; launch or switch to Opera

#NoTrayIcon

IfWinExist ahk_class OperaWindowClass
{
    WinActivateBottom, ahk_class OperaWindowClass
}
Else
{
  Run "C:\Program Files (x86)\Opera\opera.exe"
    WinActivate
  }
Return

ExitApp
