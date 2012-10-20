; 2011-03-06
; itunes: play next song, or launch iTunes

#NoTrayIcon

if WinExist("ahk_class iTunes")
{
ControlSend, ahk_parent, ^{Left}
}
Else
{
  Run "C:\Users\Public\Desktop\iTunes.lnk"
  WinActivate
}
Return

ExitApp
