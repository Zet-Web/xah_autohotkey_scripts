; 2010-05-02

; http://www.autohotkey.com/forum/viewtopic.php?t=57606
; while in folder, set different hotkeys for different view modes. i.e. icon, list, details...

#NoTrayIcon
#IfWinActive, ahk_class CabinetWClass

^1::
^h::
^t::
  WinGet, Win_pid, PID, A
  PostMessage, 0x111, 28717,0,, ahk_pid %Win_pid%      ;"Thumbnails" (h) (t)
Return

^2::
^s::
  WinGet, Win_pid, PID, A
  PostMessage, 0x111, 28718,0,, ahk_pid %Win_pid%      ;"Tiles" (s)
Return

^3::
^n::
^i::
^m::
  WinGet, Win_pid, PID, A
  PostMessage, 0x111, 28713,0,, ahk_pid %Win_pid%      ;"Icons" (n) (i) (m = Medium icon view)
Return

^4::
^l::
  WinGet, Win_pid, PID, A
  PostMessage, 0x111, 28715,0,, ahk_pid %Win_pid%      ;"List" (l)
Return

^5::
^d::
  WinGet, Win_pid, PID, A
  PostMessage, 0x111, 28716,0,, ahk_pid %Win_pid%      ;"Details" (d)
Return
