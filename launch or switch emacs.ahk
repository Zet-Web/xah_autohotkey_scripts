; 2010-04-01, 2011-11-27
; launch or switch emacs

#NoTrayIcon

If WinExist("ahk_class Emacs")
{
  If WinActive("ahk_class Emacs") {
    WinActivateBottom, ahk_class Emacs
      } Else {
    WinActivate
}
}
Else
{
  Run "c:\Users\h3\apps\emacs-24.2\bin\runemacs.exe"
  ; Run "C:\Users\Public\Desktop\ErgoEmacs.lnk"
  WinWait ahk_class Emacs
  WinActivate
}
Return

ExitApp
