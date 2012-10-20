; 2011-01-03
; delete Second Life cache files

#NoTrayIcon

; MsgBox, starting to empty sl cache. Might take up to 30 sec.

SoundPlay, *-1

FileRemoveDir, C:\Users\xah\AppData\Local\PhoenixViewer\ , 1
FileRemoveDir, C:\Users\xah\AppData\Local\SecondLife\, 1

MsgBox, Second Life Cache deletion completed.
Return

ExitApp