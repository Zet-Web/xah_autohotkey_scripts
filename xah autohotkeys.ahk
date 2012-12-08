; -*- coding: utf-8 -*-
; 2011-06-21, …, 2012-12-01
; Xah Lee's autohotkey set
; See:
; http://xahlee.info/mswin/autohotkey.html
; http://xahlee.info/mswin/autohotkey_key_notations.html
; http://xahlee.info/mswin/autohotkey_examples.html

;────────── ────────── ────────── ────────── ──────────
;;; global ahk script settings
#SingleInstance force
SetTitleMatchMode, 2

DetectHiddenWindows, on
SetNumLockState, on
SetCapsLockState, off

;────────── ────────── ────────── ────────── ──────────
; global hotkeys

CapsLock::Return

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

$F9::Run "launch or switch emacs.ahk"
$F10::Run "launch or switch firefox.ahk"

$NumpadAdd::Send !{Tab} ; switch to previous app

$#NumpadAdd::Send {Volume_Up 5} ; increase sound level
$#NumpadSub::Send {Volume_Down 5} ; decrease sound level

$#Del::FileRecycleEmpty ; Win+Del to empty trash (recycle bin)

;────────── ────────── ────────── ────────── ──────────
; global hotkeys that start with Win key

~LWin Up::Return ; disable Win key behavior of popping up the Start Menu, but still allow Win+‹key› combination.
~RWin Up::Return ; disable Win key behavior of popping up the Start Menu, but still allow Win+‹key› combination.

; ; disable the bunch of launch app keys. Because it change keys whenever you add or delete a icon there.
; #1::Return
; #2::Return
; #3::Run "launch or switch process explorer.ahk"
; #4::Return
; #5::Return
; #6::Return
; #7::Return
; #8::Return
; #9::Return
; #0::Return

; http://xahlee.info/mswin/windows_key_shortcuts.html
; $#b::Return ; disable focus on Notification Area (system tray)
; $#d::Return ; disable going into desktop. Windows's default behavior is annoying because it hides all other apps.
; $#l::Return ; disable Lock Desktop. Cannot be disabled.
; $#m::Return ; disable minimizing all window
; $#u::Return ; disable “Ease of Access”

; $#t::Return ; disable putting the focus on the Taskbar

; $#Up::Return ; disable window resize
; $#Down::Return ; disable window resize
; $#Left::Return ; disable window resize
; $#Right::Return ; disable window resize

;────────── ────────── ────────── ────────── ──────────
;; emacs
#IfWinActive ahk_class Emacs

CapsLock::Send ^2 ; 

; cut copy paste, in ergoemacs keybinding with dvorak layout
$F2::Send {F2}
$F3::Send {F3}
$F4::Send {F4}

;────────── ────────── ────────── ────────── ──────────
;; Mozilla Firefox

#IfWinActive ahk_class MozillaWindowClass

NumpadDiv::Send ^{PgUp} ; previous tab
NumpadMult::Send ^{PgDn} ; next tab
NumpadSub::Send ^w ; close window

$RButton::Send {MButton}
$MButton::Send {RButton}
$XButton2::Send ^w ; close

$F1::Send ^a ; select all

; open new tab and paste in url, go there
Numpad9::
{
Send ^t
sleep 200
Send ^v
sleep 100
Send {Enter}
}
Return

;────────── ────────── ────────── ────────── ──────────
;; google chrome

; on 2010-02-01, google chrome's class
;  changed “Chrome_WidgetWin_0” to “Chrome_WindowImpl_0”
; 4.0.249.78 (36714)
; on 2010-05-26, it's back to Chrome_WidgetWin_0
; on 2011-07-24, it's Chrome_RenderWidgetHostHWND1
; on 2012-05-21, it's Chrome_WidgetWin_1

#IfWinActive ahk_class Chrome_WidgetWin_1
NumpadDiv::Send ^{PgUp} ; previous tab
NumpadMult::Send ^{PgDn} ; next tab

$Insert::WinActivateBottom, ahk_class Chrome_WidgetWin_1

$RButton::Send {MButton}
$MButton::Send {RButton}

$XButton2::Send ^w ; close

$F1::Send ^a ; select all

NumpadSub::Send ^w ; close window

; open new tab and paste in url, go there
Numpad9::
{
Send ^t
sleep 200
Send ^v
sleep 100
Send {Enter}
}
Return

;────────── ────────── ────────── ────────── ──────────
;; Windows Internet Explorer (IE)

#IfWinActive ahk_class IEFrame

$RButton::Send {MButton}
$MButton::Send {RButton}

$XButton2::Send ^w ; close

$F1::Send ^a ; select all

NumpadDiv::Send ^+{Tab} ; previous tab
NumpadMult::Send ^{Tab} ; next tab
NumpadSub::Send ^w ; close window

; open new tab and paste in url, go there
Numpad9::
{
Send ^t
sleep 200
Send ^v
sleep 100
Send {Enter}
}
Return

;────────── ────────── ────────── ────────── ──────────
;; Windows Explorer (desktop)
#IfWinActive ahk_class CabinetWClass

$XButton2::Send ^w ; close

Numpad1::Send {Alt}vd ; Set view style to “detail”
Numpad2::Send {Alt}vr{Enter} ;; Set view style to “large icons”

Numpad7::Run "launch or switch favorites folder.ahk"

NumpadDiv::WinActivateBottom, ahk_class CabinetWClass
NumpadMult::Send !{Tab} ; switch to previous app

NumpadSub::Send ^w ; close window

;────────── ────────── ────────── ────────── ──────────
;; image IrfanView hotkeys for fullscreen mode
#IfWinActive ahk_class FullScreenClass

; $LButton::Send ^m ; switch random img.
; $WheelUp::Send ^m ; switch random img.

$RButton::Send ^m ; switch random img.

$XButton1::Send {Del} ; delete img.
$XButton2::Send {Esc} ; close

$\::Send {F7} ; put to folder
$NumpadDot::Send {F7} ; put to folder

Numpad0::Send ^m ; switch random img.

; Numpad7::Send - ; zoom out
; Numpad8::Send ^h ; original size
; Numpad9::Send {=} ; zoom in

NumpadSub::Send {Esc} ; close image

;────────── ────────── ────────── ────────── ──────────
;; IrfanView hotkeys
#IfWinActive ahk_class IrfanView

$XButton2::Send {Esc} ; close

$\::Send {F7} ; put to folder

Numpad0::Send ^m ; switch random img.

NumpadSub::Send {Esc} ; close image

;────────── ────────── ────────── ────────── ──────────
;; Opera
#IfWinActive ahk_class OperaWindowClass

NumpadDiv::Send ^+{F6} ; previous tab
NumpadMult::Send ^{F6} ; next tab
NumpadSub::Send ^w ; close window

F6::Send !d ; put focus on URL field

$RButton::Send {MButton}
$MButton::Send {RButton}

$XButton2::Send ^w ; close

$F1::Send ^a ; select all

; open new tab and paste in url, go there
Numpad9::
{
Send ^t
sleep 200
Send ^v
sleep 100
Send {Enter}
}
Return

;────────── ────────── ────────── ────────── ──────────
;; safari
#IfWinActive ahk_class {1C03B488-D53B-4a81-97F8-754559640193}

NumpadDiv::Send ^+{Tab} ; previous tab
NumpadMult::Send ^{Tab} ; next tab

$RButton::Send {MButton}
$MButton::Send {RButton}

$XButton2::Send ^w ; close

$F1::Send ^a ; select all

NumpadSub::Send ^w ; close window

; open new tab and paste in url, go there
Numpad9::
{
Send ^t
sleep 200
Send !d
sleep 100
Send ^v
sleep 100
Send {Enter}
}
Return

;────────── ────────── ────────── ────────── ──────────
;; gimp
#IfWinActive ahk_class gdkWindowToplevel 

NumpadDiv::Send ^+{Tab} ; previous tab
NumpadMult::Send ^{Tab} ; next tab

$XButton2::Send ^w ; close
NumpadSub::Send ^w ; close window

;────────── ────────── ────────── ────────── ──────────
;; Second Life

; if WinActive("ahk_class Second Life") or WinActive("ahk_class Imprudence")

#IfWinActive ahk_class Second Life

; 〔Second Life combat keys, for arrow users.ahk〕

NumpadSub::Send ^w ; close window

^Numpad9::Run "Second Life combat setup.ahk" ; combat setup

; $MButton::Send m ; toggle mouse look
$XButton2::Send ^w ; close
$XButton1::Send ^!+9 ; show hide volume (objects)

NumpadDiv::Send !{Left} ; previous tab
NumpadMult::Send !{Right} ; next tab

Numpad1::Send ^!+9 ; show hide volume (objects)
Numpad3::Send ^!+= ; show/hide particles
Numpad4::Send ^+r ; show hide wireframe
Numpad5::Send ^+f ; show/hide friend list
Numpad6::Send ^!t ; show/hide alpha (transparent) objects
Numpad8::Send ^h ; show/hide local chat
Numpad9::Send ^+a  ; Emerald toggle sim radar; or who's nearby

; ; zoom normal
; $NumpadEnter::Send ^9
; zoom toggle

zoomResetQ := false
Numpad7::
If zoomResetQ
{
Send ^0
Send ^0
Send ^0
zoomResetQ := false
}
Else
{
Send ^9
zoomResetQ := true
}
Return

Control & F11::Send ^t ; toggle im
F11::Send ^t ; toggle im
F12::Send ^i ; show/hide inventory

\::Send m ; toggle mouse look

;────────── ────────── ────────── ────────── ──────────
;; Google Earth, Oracle VM VirtualBox

; #IfWinActive ahk_class QWidget

; WheelLeft::Send +{Left} ; rotate counter-clockwise
; WheelRight::Send +{Right} ; rotate counter-clockwise

; ; swap middle/right buttons
; $RButton::MButton
; $MButton::RButton

;────────── ────────── ────────── ────────── ──────────
;; Mathematica hotkeys
#IfWinActive ahk_class NotebookFrame

AppsKey & t::Send (){Left} ; insert paren
AppsKey & h::Send {{}{}}{Left} ; insert braces
AppsKey & n::Send []{Left}     ; insert square brackets
Insert::Send ^{F6} ; insert switches window

NumpadSub::Send ^w ; close window

;────────── ────────── ────────── ────────── ──────────
;; cygwin, mintty
#IfWinActive ahk_class mintty

F6::Send SbapCW2


;────────── ────────── ────────── ────────── ──────────
;;  Windows PowerShell
#IfWinActive ahk_class ConsoleWindowClass
F6::Send .\apps\emacs-24.2\bin\runemacs.exe
