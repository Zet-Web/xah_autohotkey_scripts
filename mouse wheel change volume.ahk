
; when Numpad minus is down, make mouse wheel do change sound volume
F1::State:=!State ;the ! means Logical Not in expressions

$WheelUp::
If State
Send {Volume_Up}
Else
Send {WheelUp}
Return

$WheelDown::
If State
Send {Volume_Down}
Else
Send {WheelDown}

