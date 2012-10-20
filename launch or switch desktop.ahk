; 2011-09-06
; launch or switch to Windows Explorer (folder)

#NoTrayIcon

If WinExist("ahk_class CabinetWClass")
{
  If WinActive("ahk_class CabinetWClass") {
    WinActivateBottom, ahk_class CabinetWClass
      } Else {
    WinActivate
      }
}
Else
{
  ; "C:\Users\h3\Links\Desktop.lnk"
  ; "C:\Users\h3\Favorites"
  Run "C:\Users\h3\Links"
    WinActivate
  }
Return

ExitApp
