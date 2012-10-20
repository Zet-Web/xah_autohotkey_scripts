; 2009-11-13, 2009-12-18; 2010-04-24, 2010-07-18
; Second Life keyboard macros. By Xah Lee.
; http://xahsl.org/sl/index.html
; this key set is designed for Second Life combat.

;; Second Life hotkeys
#IfWinActive ahk_class Second Life

; • “numpad 9” turn off foot shadow, fog. Tree, water, grass, clouds, bump map rendering. Turn on always run. Set sim lighting to noon.
$Numpad9::
{
Send ^!{F5}
sleep 8
Send ^!{F6}
sleep 8

Send ^!+{3}
sleep 8
Send ^!+{7}
sleep 8
Send ^!+{0}
sleep 8
Send ^!+{-}
sleep 8
Send ^!+{\}
sleep 8

Send ^{r}
sleep 8
Send ^+{y}
sleep 8
}
Return

; • mouse 4th button to show/hide volume.
$XButton1::Send ^!+9

; • mouse 5th button to show/hide wirefram.
$XButton2::Send ^+r

; • “numpad 1” show hide volume (objects)
$Numpad1::Send ^!+9

; • “numpad 4” show hide wireframe
$Numpad4::Send ^+r

; • “numpad 7” zoom in
$Numpad7::
Send ^0
Send ^0
Return

; • “numpad Enter” reset zoom
$NumpadEnter::Send ^9
