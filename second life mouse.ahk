; right button shoots grenade in Second Life 
$RButton::
IfWinActive ahk_class Second Life
{
  Send {End}
}
Else {
  Send {RButton}
}
Return

; middle button shoots grenade in Second Life 
$MButton::
IfWinActive ahk_class Second Life
{
  Send ^{End}
}
Else {
  Send {MButton}
}
Return

ExitApp