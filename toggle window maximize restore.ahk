; 2011-04-30
; A toggle. maximize current window, or restor size if already maximized.

#NoTrayIcon
WinGetPos, winWidth, winHeight, , , A  ; "A" to get the active window's pos.
if ( winWidth == -8 and winHeight == -8) {
WinRestore, A
} else
{
WinMaximize, A
}

ExitApp

; old code
; ; toggle window maximize/restore
; windowMaxed := false
; $ScrollLock::
; If windowMaxed
; {
;   WinRestore, A
;   windowMaxed := false
; }  Else
; {
; 	WinMaximize, A
;   windowMaxed := true
; }
; Return

; ; § test code
; NumpadAdd::
; WinGetPos, X, Y, , , A  ; "A" to get the active window's pos.
; MsgBox, The active window is at %X%`,%Y%
; return

