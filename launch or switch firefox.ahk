; 2010-04-01, 2011-11-27
; launch or switch to firefox

#NoTrayIcon
SetTitleMatchMode, 2

If WinExist("Mozilla Firefox")
{
  If WinActive("Mozilla Firefox") {
    WinActivateBottom, Mozilla Firefox
      } Else {
    WinActivate
}
}
Else
{
  Run "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
}
Return

ExitApp
