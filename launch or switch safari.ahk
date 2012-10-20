; 2010-03-20, 2011-12-03
; launch or switch to Safari

#NoTrayIcon

IfWinExist ahk_class {1C03B488-D53B-4a81-97F8-754559640193}
{
  IfWinActive ahk_class {1C03B488-D53B-4a81-97F8-754559640193}
 {
    WinActivateBottom, ahk_class {1C03B488-D53B-4a81-97F8-754559640193}
      } Else {
    WinActivate
      }
}
Else
{
  Run "C:\Program Files (x86)\Safari\Safari.exe"
  }
Return

ExitApp
