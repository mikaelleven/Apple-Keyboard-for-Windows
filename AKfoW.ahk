; Apple Keyboard for Windows fix (AutoHotKey script)
;
; Copyright (c) 2014 Mikael Levén - http://www.leven.se

; Permission is hereby granted, free of charge, to any person obtaining a copy of
; this software and associated documentation files (the "Software"), to deal in the 
; Software without restriction, including without limitation the rights to use, copy, 
; modify, merge, publish, distribute, sublicense, and/or sell copies of the 
; Software, and to permit persons to whom the Software is furnished to do so, 
; subject to the following conditions:

; The above copyright notice and this permission notice shall be included in all 
; copies or substantial portions of the Software.

; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY 
; KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
; WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
; PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS 
; OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR 
; OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR 
; OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
; SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



#NoEnv
#SingleInstance Force

SetWorkingDir %A_ScriptDir%

; Menu, TRAY, Icon, AKfoW.ico
Menu, TRAY, Tip, Apple Keyboard for Windows


; ConfigFilename = AKfoW.ini
; SectionName = AKfoW

; IniRead, RunStandAlone, %ConfigFilename%, %SectionName%, RunStandAlone, true

; IniWrite, %RunStandAlone%, %ConfigFilename%, %SectionName%, RunStandAlone


; ExpertModeMenuHandler:

; return

; Menu, TRAY, NoMainWindow
; Menu, TRAY, NoStandard

; Menu, TRAY, add, "Test", ExpertModeMenuHandler
; Menu, TRAY, Default, Restart UAWKS

; Menu, TRAY, UseErrorLevel, On


; Fix Cmd+Tab for Windows
; LWin & Tab::AltTab ; this will make Win-Tab function as Alt-Tab
; Alt & Tab::Send #{Tab} ; this will make Alt-Tab function as Win-Tab
 
; Disable Win/Cmd + Tab 
LWin & Tab::AltTab
; ; 
; return

; Remap the Play, Next and Prev from AppleWirelessKeyboard utility to be generic (not only iTunes)  
SC122::Media_Play_Pause ; B3
SC119::Media_Next ; B0
SC110::Media_Prev ; B1
; SC154::PrintScreen ; 2C


F13::PrintScreen
F15::CtrlBreak


; if enableKeys = "1"
; {
#F7::Send {vkB1sc110}
#F8::Send {vkB3sc122}
#F9::Send {vkB0sc119}
; #F10::Send {vk79sc044}
; #F8::Media_Play_Pause
; ; Media_Play_Pause::SoundBeep

#F10::Volume_Mute
#F11::Volume_Down
#F12::Volume_Up
; }


; Fix Cmd (win) + XX keys: Save, Window close, Copy, Cut, Paste
LWin & s::Send {Ctrl down}s{Ctrl up}
LWin & w::Send {Ctrl down}w{Ctrl up}
LWin & c::Send {Ctrl down}c{Ctrl up}
LWin & v::Send {Ctrl down}v{Ctrl up}
LWin & x::Send {Ctrl down}x{Ctrl up}
LWin & a::Send {Ctrl down}a{Ctrl up}
LWin & z::Send {Ctrl down}z{Ctrl up}
LWin & t::Send {Ctrl down}t{Ctrl up}
; LWin & r::Send {Ctrl down}r{Ctrl up} ; Cmd + R(eload)

;  Fake Cmd + Q(uit)
LWin & q::Send !{F4}


; Emulate Cmd + Shift + 7 (comment in Sublime Text) - Sends Ctrl + Shift + 7 on Windows
+#7::Send +^7

; Windows snap/resize
+!#Left::Send  {LWin down}{Left}{LWin up}
+!#Right::Send  {LWin down}{Right}{LWin up}
+!#Up::Send  {LWin down}{Up}{LWin up}
+!#Down::Send  {LWin down}{Down}{LWin up}

;  Home / End, PageUp / PageDown and Shift + Home / Shift + End
+#Left::Send {Shift down}{Home}{Shift up}
+#Right::Send {Shift down}{End}{Shift up}
#Left::Send {Home}
#Right::Send {End}
#Up::Send {PgUp}
#Down::Send {PgDn}

SetTitleMatchMode, 2
; SetTitleMatchMode, Slow

; Shit+Alt+ 8/9 for curly brackets
+!8::Send {{}
+!9::Send {}}

; Alt+ 8/9 for brackets (same as AltGr + 8/9)
!8::Send {[}
!9::Send {]}

