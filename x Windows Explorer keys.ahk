; 2011-06-22

;────────── ────────── ────────── ────────── ──────────
;; Windows Explorer (desktop)
#IfWinActive ahk_class CabinetWClass

$XButton2::Send ^w ; close

NumpadSub::Send ^w ; close window

Numpad1::Send {Alt}vd ; Set view style to “detail”
Numpad2::Send {Alt}vm ;; Set view style to “medium icons”
Numpad3::Send {Alt}vr {Enter} ;; Set view style to “large icons”

Numpad7::Run "%HOMEPATH%\cinse_pixra3"
Numpad8::Run "%HOMEPATH%\Pictures"
Numpad9::Run "%HOMEPATH%\Downloads"

