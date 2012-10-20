; 2011-03-06
; play or pause iTunes, launch first if not already running

#NoTrayIcon

If WinExist("ahk_class iTunes")
{
  ControlSend, ahk_parent, {Space}
}
Else
{
  Run "C:\Program Files (x86)\iTunes\iTunes.exe"
    WinWait ahk_class iTunes
    WinActivate
    ControlSend, ahk_parent, {Space}
}
Return

ExitApp