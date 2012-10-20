; 2010-03-05

; previous tab

#NoTrayIcon

WinGet, myProcName, ProcessName, A
If (WinActive("ahk_class Second Life") Or WinActive("ahk_class Vertical Life") )
{
  Send !{Left}
}
Else If (WinActive("ahk_class Emacs")
         Or WinActive("ahk_class Chrome_WindowImpl_0")
         Or WinActive("ahk_class MozillaUIWindowClass")
         Or WinActive("ahk_class gdkWindowToplevel") )
{
  Send ^{PgUp}  
}
Else If (WinActive("ahk_class IEFrame")
         Or WinActive("ahk_class OpWindow")
         Or (myProcName = "safari.exe") )
{
  Send ^+{Tab}
}
Else {
  Send {NumpadDiv}
}
Return