; 2010-05-16

;;; make the numpad divide “/” key to do previous tab

$NumpadDiv::
WinGet, myProcName, ProcessName, A
If ( WinActive("ahk_class Chrome_WindowImpl_0")
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

;;; make the numpad star “*” key to do next tab
$NumpadMult::
WinGet, myProcName, ProcessName, A
If ( WinActive("ahk_class Chrome_WindowImpl_0")
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

