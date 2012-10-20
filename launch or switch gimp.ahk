; 2011-01-01
; launch or switch to Gimp

#NoTrayIcon

; if WinExist("ahk_class gdkWindowToplevel")
if WinExist("GNU Image Manipulation Program")
{
  WinActivate
}
Else
{
  Run "C:\Users\Public\Desktop\GIMP 2.lnk"
  WinActivate
}
Return

ExitApp
