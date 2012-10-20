; 2010-12-21
; launch or switch to Skype

#NoTrayIcon

IfWinExist ahk_class tSkMainForm
{
  WinActivate
}
Else
{
  Run "C:\Program Files (x86)\Skype\Phone\Skype.exe"
  }
Return

ExitApp
