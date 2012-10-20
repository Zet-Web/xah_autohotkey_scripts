; 2010-03-05, 2011-11-27
; launch or switch to Google Chrome

#NoTrayIcon

If WinExist("ahk_class Chrome_WidgetWin_1")
{
  If WinActive("ahk_class Chrome_WidgetWin_1") {
    WinActivateBottom, ahk_class Chrome_WidgetWin_1
      } Else {
    WinActivate
      }
}
Else
{
  Run "C:\Users\h3\AppData\Local\Google\Chrome\Application\chrome.exe"
    ; Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
    ; WinWait ahk_class Chrome_WidgetWin_1
    ; WinActivate
    }
Return

ExitApp

; solution to fix the problem of window come to front but isn't activated
; IfWinExist ahk_class Chrome_WidgetWin_1
;     WinSet, Top
