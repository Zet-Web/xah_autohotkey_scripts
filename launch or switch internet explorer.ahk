; 2010-06-03, 2011-12-03
; launch or switch to Internet Explorer

#NoTrayIcon

If WinExist("ahk_class IEFrame")
{
  WinActivate
  If WinActive("ahk_class IEFrame") {
    WinActivateBottom, ahk_class IEFrame
      } Else {
    WinActivate
      }
}
Else
{
  Run "iexplore.exe"
}
Return

ExitApp
