; 2011-09-06, 2012-04-12
; launch or switch to folder “Links”

#NoTrayIcon

If WinExist("Links")
{
  If WinActive("ahk_class CabinetWClass") {
    WinActivateBottom, Links
    ; WinActivateBottom, ahk_class CabinetWClass
      } Else {
    WinActivate
      }
}
Else
{
  Run "C:\Users\h3\Links"
    WinActivate
  }
Return

ExitApp
