; 2010-03-05
; launch or switch to Emerald Viewer for Second Life

#NoTrayIcon

If WinExist("ahk_class Second Life")
 {
   WinActivate
 }
Else
{
  Run "C:\Users\public\Desktop\Phoenix Viewer.lnk"
    WinWait ahk_class Second Life
    WinActivate
 }
Return

ExitApp
