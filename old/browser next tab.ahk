; 2010-03-05

; next tab

#NoTrayIcon

WinGet, myProcName, ProcessName, A
If (WinActive("ahk_class Second Life") Or WinActive("ahk_class Vertical Life") )
{
  Send !{Right}
}
Else If (WinActive("ahk_class Emacs") 
  Or WinActive("ahk_class Chrome_WindowImpl_0") 
Or WinActive("ahk_class MozillaUIWindowClass") 
Or WinActive("ahk_class gdkWindowToplevel") )
{
  Send ^{PgDn}  
}
Else If (WinActive("ahk_class IEFrame")
  Or WinActive("ahk_class OpWindow")
or (myProcName = "safari.exe") )
{
  Send ^{Tab}
}
Else {
  Send {NumpadMult}
}
Return

