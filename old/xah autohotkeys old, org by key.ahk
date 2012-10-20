; 2009-06-13, 2009-10-25, 2009-12-04, 2010-01-06
; Xah Lee's autohotkey set
; See:
; http://xahlee.info/mswin/autohotkey.html
; http://xahlee.info/mswin/autohotkey_key_notations.html

;--------------------------------------------------

;;; global stuff
#SingleInstance force
DetectHiddenWindows, on
SetTitleMatchMode, 2

SetNumLockState, on
SetCapsLockState, off

;;; switch to previous app
CapsLock::
Send !{Tab}
SetCapsLockState, off
Return

;;; make num lock key to toggle window maximize/restore
NumLock::
If Maximized
	WinRestore, A
Else
	WinMaximize, A
Maximized := Maximized ? "" : 1
Return

; make the the scroll lock key (ScrLk) toggle all hotkeys.
ScrollLock::Suspend

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


F1::Run "C:\Users\xah\Documents\autohotkey\switch to thunderbird.ahk"


F4::Run "C:\Users\xah\Documents\autohotkey\launch google chrome.ahk"
F6::Run "C:\Users\xah\Documents\autohotkey\launch or switch emacs.ahk"
F7::Run "C:\Users\xah\Documents\autohotkey\launch firefox.ahk"

;;; increase decrease volume
+NumpadSub::Send {Volume_Down 5}
+NumpadAdd::Send {Volume_Up 5}

;;; make the numpad divide “/” key to do previous tab

$NumpadDiv::
WinGet, myProcName, ProcessName, A
If (WinActive("ahk_class Emacs")
         Or WinActive("ahk_class Chrome_WindowImpl_0")
         Or WinActive("ahk_class MozillaUIWindowClass")
         Or WinActive("ahk_class gdkWindowToplevel") )
{
  Send ^{PgUp}
}
Else If (WinActive("ahk_class IEFrame")
         Or WinActive("ahk_class OpWindow")
         Or (myProcName = "safari.exe") )
{
  Send ^+{Tab}
}
Else {
  Send {NumpadDiv}
}
Return

;;; make the numpad star “*” key to do next tab
$NumpadMult::
WinGet, myProcName, ProcessName, A
If (WinActive("ahk_class Emacs")
  Or WinActive("ahk_class Chrome_WindowImpl_0")
Or WinActive("ahk_class MozillaUIWindowClass")
Or WinActive("ahk_class gdkWindowToplevel") )
{
  Send ^{PgDn}
}
Else If (WinActive("ahk_class IEFrame")
  Or WinActive("ahk_class OpWindow")
or (myProcName = "safari.exe") )
{
  Send ^{Tab}
}
Else {
  Send {NumpadMult}
}
Return

;; in IrfanView, make the num pad “0” key to switch random img.
#IfWinActive ahk_class IrfanView
$Numpad0::Send ^m

;; in IrfanView, make the num pad “0” key to switch random img.
#IfWinActive ahk_class FullScreenClass
$Numpad0::Send ^m


;;; iTunes

;; NumpadSub for prev song
; Media_Prev::
$NumpadSub::
IfWinExist, ahk_class iTunes
ControlSend, ahk_parent, ^{Left}
Return

;; NumpadAdd for next song
; Media_Next::
$NumpadAdd::
IfWinExist, ahk_class iTunes
ControlSend, ahk_parent, ^{Right}
Return

;--------------------------------------------------
;; Second Life hotkeys
#IfWinActive ahk_class Second Life

; combat setup
^+F12::Run "C:\Users\xah\Documents\autohotkey\Second Life combat setup.ahk"

; wireframe Ctrl+Shift+r
$MButton::Send ^+r

; show hide volumn Ctrl+Alt+Shift+9
$RButton::Send ^!+9

; mouse first extra button do zoom in
$XButton1::Send ^0

; mouse second extra button do zoom normal
$XButton2::Send ^9

; F10 show/hide alpha textures
F10::Send ^!t

; show/hide inventory
F11::Send ^i

; show/hide instant messaging window.
F12::Send ^t

; exit view
$`::Send {Esc}

; toggle Mouse Look
$\::Send m

; previous tab
$NumpadDiv::Send !{Left}

; next tab
$NumpadMult::Send !{Right}


;--------------------------------------------------
; on 2010-02-01, google chrome's class
;  changed “Chrome_WidgetWin_0” to “Chrome_WindowImpl_0”
; 4.0.249.78 (36714)

