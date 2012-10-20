; 2009-06-13, ..., 2010-12-21
; Xah Lee's autohotkey set
; See:
; http://xahlee.info/mswin/autohotkey.html
; http://xahlee.info/mswin/autohotkey_key_notations.html

; § --------------------------------------------------
;;; global ahk script settings
#SingleInstance force
SetTitleMatchMode, 2

DetectHiddenWindows, on
SetNumLockState, on
SetCapsLockState, off

; § --------------------------------------------------
; turn on system-wide ErgoEmacs keybinding
; Run "c:/Users/xah/ErgoEmacs_Source/ergoemacs/extra/ErgoEmacs_keybinding_Windows_dvorak.ahk"

; ; make the forward and backward buttons do copy and paste
; XButton2::Send ^c

; § --------------------------------------------------
; global hotkeys. They generally start with Win key

CapsLock::Return
$NumLock::Run "minimize window.ahk"
$#+ScrollLock::Suspend ; toggle on/off hotkeys of this script.
$#ScrollLock::reload ; reload this script (Shift+ScrLk)

; XButton1::Send !{Left} ; previous tab
; XButton2::Send !{Right} ; next tab
; RButton::Send ^{LButton} ; open in new tab
; MButton::Send RButton ; right click

;; empty trash (recycle bin)
$#Del::
FileRecycleEmpty
MsgBox, Trash emptied
Return

#+Del::Run "delete Second Life cache.ahk" ; delete Second Life cache

$F1::Send ^x ; cut
$F2::Send ^c ; copy
$F3::Send ^v ; paste
$F4::Run "launch or switch google chrome.ahk"
; $F5::Return
$F6::Run "launch or switch emacs.ahk"
$F7::Run "launch or switch firefox.ahk"
$F8::Run "launch or switch internet explorer.ahk"

; $F9::Run "launch or switch opera.ahk"
; $F10::Return
; $F11::Return
; $F12::Return

; WheelUp::SoundPlay, *-1
; WheelDown::SoundPlay, *-1

$#NumpadAdd::Send {Volume_Up 5} ; sound volume level increase
$#NumpadSub::Send {Volume_Down 5} ; sound volume level decrease

~LWin Up::Return ; disable Win key behavior of popping up the Start Menu, but still alow Win+‹key› combination.

$RWin::AppsKey ; make the right Win key behave as AppsKey

$NumpadAdd::Send !{Tab} ; switch to previous app
$NumpadSub::Run "iTunes next song.ahk"
$^NumpadSub::Run "iTunes previous song.ahk"

$ScrollLock::Run "toggle window maximize restore.ahk"

$#F1::Return ; disable Windows Help

$#+m::Return ; disable restore minimized windows

; disable the bunch of launch app keys setup by QuickLaunch. Because it change keys whenever you add or delete a icon there.
#1::Run "launch or switch thunderbird.ahk"
#2::Run "launch or switch PowerShell.ahk"
#3::Run "launch or switch process explorer.ahk"
#4::Return
#5::Run "launch or switch gimp.ahk"
#6::Run "launch or switch cygwin.ahk"

#7::Run "launch or switch skype.ahk"
#8::Run "launch or switch mathematica.ahk"
#9::Return
#0::Return

; $#a::Return ; disable
$#b::Return ; disable focus on Notification Area (system tray)
; $#c::Return ; disable
; $#d::Return ; disable going into desktop. Windows's default behavior is annoying because it hides all other apps.
;; $#e::Return ; disable Windows Explorer
; $#e::Run "launch xah desktop.ahk" ; launch my own folder
; $#f::Return ; disable Windows Search
; $#g::Return ; disable
; $#h::Return ; disable
; $#i::Return ; disable
; $#j::Return ; disable
; $#k::Return ; disable
$#l::Return ; disable Lock Desktop. Cannot be disabled.
$#m::Return ; disable minimizing all window
; $#n::Return ; disable
; $#o::Return ; disable
; $#p::Return ; disable
; $#q::Return ; disable
; $#r::Return ; disable Run dialog
; $#s::Return ; disable
; $#t::Return ; disable putting the focus on the Taskbar
$#t::Send !{Tab} ; switch to previous app
$#u::Return ; disable “Ease of Access”
; $#v::Return ; disable
; $#w::Return ; disable
; $#x::Return ; disable
; $#y::Return ; disable
; $#z::Return ; disable

; § --------------------------------------------------
;; Mathematica hotkeys
#IfWinActive ahk_class NotebookFrame

Pause::Send ^w ; close window
AppsKey & e::Send (){Left} ; insert paren
AppsKey & u::Send {{}{}}{Left} ; insert braces
AppsKey & o::Send []{Left}     ; insert square brackets
Insert::Send ^{F6} ; insert switches window

; § --------------------------------------------------
;; VLC hotkeys
#IfWinActive ahk_class QWidget

Pause::Send !{F4} ; close window

; § --------------------------------------------------
;; Notepad hotkeys
#IfWinActive ahk_class Notepad

; close window
Pause::Send !{F4}


; § --------------------------------------------------
;; emacs hotkeys
#IfWinActive ahk_class Emacs

^Ins::Run "launch or switch emacs alt.ahk"

CapsLock::Send !a ; call execute-extended-command

NumpadDiv::Send ^{PgUp} ; previous tab
NumpadMult::Send ^{PgDn} ; next tab

Pause::Send ^w ; kill current buffer

$F12::Send !s ; isearch-forward
$F11::Send !+s ; isearch-backward

; cut copy paste. Leave the keys as is.
; $F1::Send {F1}
; $F2::Send {F2}
; $F3::Send {F3}

; cut copy paste, in ergoemacs keybinding with dvorak layout
F1::Send !q ; cut
F2::Send !j ; copy
F3::Send !k ; paste


; § --------------------------------------------------
;;Firefox 3.x and Mozilla Thunderbird hotkeys

#IfWinActive ahk_class MozillaUIWindowClass

; Inbox - xahlee@gmail.com imap - Mozilla Thunderbird
; ahk_class MozillaUIWindowClass

NumpadDiv::Send ^{PgUp} ; previous tab
NumpadMult::Send ^{PgDn} ; next tab

Pause::Send ^w ; close window

; § --------------------------------------------------
;; pidgin

#IfWinActive ahk_class gdkWindowToplevel
NumpadDiv::Send ^{PgUp} ; previous tab
NumpadMult::Send ^{PgDn} ; next tab

; § --------------------------------------------------
;; Windows Internet Explorer 8 (ie8) source code window hotkeys
#IfWinActive ahk_class HTMLSOURCEVIEW

Pause::Send !{F4} ; close window
; § --------------------------------------------------
;; Windows Internet Explorer 9 (ie9) source code window hotkeys
#IfWinActive ahk_class SOURCE_VIEWER
Pause::Send ^w ; close window

; § --------------------------------------------------
;; skype hotkeys
#IfWinActive ahk_class TConversationForm.UnicodeClass

Pause::Send {Esc} ; close window

; § --------------------------------------------------
;; pidgin hotkeys
#IfWinActive ahk_class gdkWindowToplevel

Pause::Send ^w ; close window

; § --------------------------------------------------
;; Windows Live Mail open window hotkeys
#IfWinActive ahk_class ATH_Note

Pause::Send !{F4} ; close window
$XButton2::Send !{F4} ; close window
