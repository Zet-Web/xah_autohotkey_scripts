; 2011-01-01
; launch or switch to Mozilla Thunderbird

#NoTrayIcon

SetTitleMatchMode, 2
; if WinExist("ahk_class MozillaUIWindowClass") and WinExist("Mozilla Thunderbird")
If WinExist("Mozilla Thunderbird")
{
  WinActivate, Mozilla Thunderbird
}
Else
{
  Run "c:/Users/xah/Desktop/Mozilla Thunderbird.lnk"
  WinActivate
}
Return

ExitApp
