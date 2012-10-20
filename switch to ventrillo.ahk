; 2010-04-29
; launche or switch to Ventrilo

#NoTrayIcon

IfWinExist Ventrilo
; IfWinExist ahk_class #32770
{
  WinActivate
}
Else
{
  Run "C:\Program Files\Ventrilo\Ventrilo.exe"
  WinActivate
}
Return

ExitApp