; 2010-12-06
; launch or switch to Mathematica

#NoTrayIcon

IfWinExist ahk_class ahk_class NotebookFrame
{
  WinActivate
}
Else
{
  Run "C:\Program Files\Wolfram Research\Mathematica\7.0\Mathematica.exe"
}
Return

ExitApp
