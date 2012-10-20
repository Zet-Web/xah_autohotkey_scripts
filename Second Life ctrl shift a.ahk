; 2010-04-30
; http://xahsl.org/sl/index.html

#NoTrayIcon

;;; Second Life do Ctrl+h for show/hide chat dialog.
If WinActive("ahk_class Second Life") Or WinActive("ahk_class Vertical Life")
{
  Send ^+a
}
Return

ExitApp
