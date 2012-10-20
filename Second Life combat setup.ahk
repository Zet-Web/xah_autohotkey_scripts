; 2010-04-30
; Second Life setup for combat
; http://xahsl.org/sl/index.html

#NoTrayIcon

; ctrl alt f5 foot shadows
; ctrl alt f6 fog
; ctrl alt f9 flexi

; ctrl alt shift 3 tree
; ctrl alt shift 7 water
; ctrl alt shift 0 grass
; ctrl alt shift - clouds
;; ctrl alt shift \ bump
; ctrl+r always run
; ctrl+shift+y noon

If WinActive("ahk_class Second Life")
{
sleep 10
Send ^!{F6} ;fog
sleep 10
Send ^!{F9} ; flexi
sleep 10

Send ^!+{3} ; tree
sleep 10
Send ^!+{7} ; water
sleep 10
Send ^!+{0} ; grass
sleep 10
; Send ^!+{-} ; clouds
; sleep 10
; Send ^!+{\}
; sleep 10

Send ^{r} ; run
sleep 10
Send ^+{y} ; set to noon
sleep 10

}
Return

ExitApp
