; 2010-04-30

#NoTrayIcon

;;; Second Life show/hide inventory (Ctrl+i)
If WinActive("ahk_class Second Life") Or WinActive("ahk_class Vertical Life")
{
  Send ^i
 }
Return

ExitApp

