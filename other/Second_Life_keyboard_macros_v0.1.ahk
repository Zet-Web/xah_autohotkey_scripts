; 2009-11-13
; Second Life keyboard macros. By Xah Lee.
;  http://xahlee.org/
; For Jamie.

; When in Second Life viewer,
; make F1 do Zoom Default   (Ctrl+9)
; make F2 do Zoom In   (Ctrl+0)
; make F3 to toggle wirefram. (Ctrl+Shift+R)
; make F4 to toggle show/hide volume (Ctrl+Alt+Shift+9)

$F1::
IfWinActive ahk_class Second Life
{
  Send ^9 ; Ctrl+9
}
Else {
  Send {f1}
}
Return

$F2::
IfWinActive ahk_class Second Life
{
  Send ^0 ; Ctrl+0
}
Else {
  Send {f2}
}
Return


$F3::
IfWinActive ahk_class Second Life
{
  Send ^+r ; Ctrl+Shift+r
}
Else {
  Send {F3}
}
Return


$F4::
IfWinActive ahk_class Second Life
{
  Send ^!+9; Ctrl+Alt+Shift+9
}
Else {
  Send {F4}
}
Return
