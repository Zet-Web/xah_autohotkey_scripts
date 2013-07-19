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
; SetNumLockState, on
; SetCapsLockState, off

;────────── ────────── ────────── ────────── ──────────
; global hotkeys

; CapsLock::Return

; activate Sound Level control (Volume Mixer)
$^Esc::Run "C:\Windows\System32\SndVol.exe"

; $F9::Run "launch or switch emacs.ahk"
; $F10::Run "launch or switch firefox.ahk"


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

LWin::AppsKey
RWin::AppsKey
CapsLock::Send {AppsKey}
; AppsKey::Alt

;────────── ────────── ────────── ────────── ──────────
;; Mozilla Firefox

#IfWinActive ahk_class MozillaWindowClass

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

Home::Send ^{PgUp} ; previous tab
End::Send ^{PgDn} ; next tab

$RButton::Send {MButton}
$MButton::Send {RButton}
$XButton2::Send ^w ; close

$F1::Send ^a ; select all

$F12::Send ^w ; close window



; open new tab and paste in url, go there
$^F2::
{
Send ^t
sleep 200
Send ^v
sleep 100
Send {Enter}
}
Return

; copy url field
$^F3::
{
Send !d
sleep 200
Send ^c
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

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

Home::Send ^{PgUp} ; previous tab
End::Send ^{PgDn} ; next tab

$F12::Send ^w ; close window

$Insert::WinActivateBottom, ahk_class Chrome_WidgetWin_1

$RButton::Send {MButton}
$MButton::Send {RButton}

$XButton2::Send ^w ; close

$F1::Send ^a ; select all



; open new tab and paste in url, go there
$^F2::
{
Send ^t
sleep 200
Send ^v
sleep 100
Send {Enter}
}
Return

; copy url field
$^F3::
{
Send !d
sleep 200
Send ^c
}
Return

;────────── ────────── ────────── ────────── ──────────
;; Windows Internet Explorer (IE)

#IfWinActive ahk_class IEFrame

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

$RButton::Send {MButton}
$MButton::Send {RButton}

$XButton2::Send ^w ; close

$F1::Send ^a ; select all

$F12::Send ^w ; close window

Home::Send ^+{Tab} ; previous tab
End::Send ^{Tab} ; next tab



; open new tab and paste in url, go there
$^F2::
{
Send ^t
sleep 200
Send ^v
sleep 100
Send {Enter}
}
Return

;────────── ────────── ────────── ────────── ──────────
;; Windows Explorer (folder viewer)
#IfWinActive ahk_class CabinetWClass

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

;$F5::RUN ::{645ff040-5081-101b-9f08-00aa002f954e} ; open trash (recycle bin)
$F6::Send {Alt}vd ; Set view style to “detail”
$F7::Send {Alt}vr{Enter} ;; Set view style to “large icons”
$F8::Run "launch or switch favorites folder.ahk"
$F10::WinActivateBottom, ahk_class CabinetWClass

$F12::Send ^w ; close window

$XButton2::Send ^w ; close

;────────── ────────── ────────── ────────── ──────────
;; image IrfanView hotkeys for fullscreen mode
#IfWinActive ahk_class FullScreenClass

; $LButton::Send ^m ; switch random img.
; $WheelUp::Send ^m ; switch random img.

$RButton::Send ^m               ; switch random img.
$XButton1::Send {F7}            ; put to folder
$XButton2::Send {Esc} ; close

$\::Send {F7} ; put to folder
$NumpadDot::Send {F7} ; put to folder

Numpad0::Send ^m ; switch random img.
m::Send ^m ; switch random img.
Space::Send ^m ; switch random img.



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

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

Home::Send ^{PgUp} ; previous tab
End::Send ^{PgDn} ; next tab

$F12::Send ^w ; close window

$RButton::Send {MButton}
$MButton::Send {RButton}

$XButton2::Send ^w ; close

$F1::Send ^a ; select all



; open new tab and paste in url, go there
$^F2::
{
Send ^t
sleep 200
Send ^v
sleep 100
Send {Enter}
}
Return

;────────── ────────── ────────── ────────── ──────────
;; gimp
#IfWinActive ahk_class gdkWindowToplevel

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

$F12::Send ^w ; close window

$XButton2::Send ^w ; close

;────────── ────────── ────────── ────────── ──────────
;; Second Life

; if WinActive("ahk_class Second Life") or WinActive("ahk_class Imprudence")

#IfWinActive ahk_class Second Life

; 〔Second Life combat keys, for arrow users.ahk〕

^Numpad9::Run "Second Life combat setup.ahk" ; combat setup

; $MButton::Send m ; toggle mouse look
$XButton2::Send ^w ; close
$XButton1::Send ^!+9 ; show hide volume (objects)

NumpadDiv::Send !{Left} ; previous tab
NumpadMult::Send !{Right} ; next tab

; Numpad1::Send ^!+9 ; show hide volume (objects)
; Numpad3::Send ^!+= ; show/hide particles
; Numpad4::Send ^+r ; show hide wireframe
; Numpad5::Send ^+f ; show/hide friend list
; Numpad6::Send ^!t ; show/hide alpha (transparent) objects
; Numpad8::Send ^h ; show/hide local chat
; Numpad9::Send ^+a  ; Emerald toggle sim radar; or who's nearby

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

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

AppsKey & t::Send (){Left} ; insert paren
AppsKey & h::Send {{}{}}{Left} ; insert braces
AppsKey & n::Send []{Left}     ; insert square brackets
Insert::Send ^{F6} ; insert switches window

;────────── ────────── ────────── ────────── ──────────
;; cygwin, mintty
#IfWinActive ahk_class mintty

F6::Send SbapCW2

;────────── ────────── ────────── ────────── ──────────
;;  Windows PowerShell console
#IfWinActive ahk_class ConsoleWindowClass

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

F6::Send .\apps\emacs-24.2\bin\runemacs.exe

;────────── ────────── ────────── ────────── ──────────
;; Windows PowerShell ISE

#IfWinActive ahk_class HwndWrapper[PowerShell_ISE.exe;;3d7e57f0-ab7e-4dc5-95aa-e03533c06ba2]

$F2::Send ^x ; cut
$F3::Send ^c ; copy
$F4::Send ^v ; paste

F6::Send .\apps\emacs-24.2\bin\runemacs.exe

