; 2011-05-03
; http://xahsl.org/sl/index.html

; wasd or arrow keys

; mouse
; left button
; right button
; mid button
; wheel up
; wheel down
; 4th button
; 5th button

; keys

; rocket ◇ mouse rb

; grenade ◇ key
; melee ◇ key
; reload ◇ key
; toggle mouse view ◇ key
; 
; hide volume


SetTitleMatchMode, 2

; § --------------------------------------------------
;;; global ahk script settings
#SingleInstance force
DetectHiddenWindows, on
SetTitleMatchMode, 2

SetNumLockState, on
SetCapsLockState, off

; § --------------------------------------------------
; wasd set

CapsLock::Send ^!+9 ; show hide volume (objects)
Tab::Send ^+r ; show hide wireframe
LShift::Send ^+r ; show hide wireframe

; § --------------------------------------------------

; F1::
; alt := not alt
; if(alt)
; {
; Click down
; }
; else
; {
; Click up
; }

