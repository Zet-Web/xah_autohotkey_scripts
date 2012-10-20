; 2010-04-30

#NoTrayIcon

;;; Second Life do Ctrl+t for show/hide instant messaging window.
If WinActive("ahk_class Second Life") Or WinActive("ahk_class Vertical Life")
{
  Send ^t
}
Return

ExitApp
