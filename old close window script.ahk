; 2010-05-16

;;; make the “Pause/Break” key to close window or tab.
; which key to send depends on the application
Pause::
IfWinActive ahk_class ATH_Note
{ ; ATH_Note is Windows Mail
; Ctrl+F4
  Send !{F4}
}
IfWinActive ahk_class Notepad
{ ; Alt+F4
  Send !{F4}
}
Else IfWinActive ahk_class Outlook Express Browser Class
{ WinMinimize, A
}
Else IfWinActive ahk_class IrfanView
{ Send {Esc}
 }
Else ; Ctrl+w for IE, FireFox, Google Chrome, Opera, Safari
{  Send ^w
 }
Return

ExitApp

