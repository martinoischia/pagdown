; keep this groupadd on top
;;;;;;;;;;;;;;;;;;;;;;;;
;;; SpecificStuff ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;

;GroupAdd, altf4 , ahk_class ApplicationFrameWindow
;GroupAdd, altf4 , ahk_class GraphApp
;GroupAdd, altf4 , ahk_class RGLDevice

GroupAdd, f10ctrlw_insteadof_altf4 , ahk_exe code.exe
GroupAdd, f10ctrlw_insteadof_altf4 , ahk_exe chrome.exe
GroupAdd, f10ctrlw_insteadof_altf4 , ahk_exe notepad++.exe
GroupAdd, f10ctrlw_insteadof_altf4, ahk_exe SumatraPDF.exe

GroupAdd, pagdowntoswitchtab, ahk_exe ApplicationFrameHost.exe
GroupAdd, pagdowntoswitchtab, ahk_exe SumatraPDF.exe
GroupAdd, pagdowntoswitchtab, ahk_exe chrome.exe
GroupAdd, pagdowntoswitchtab, ahk_exe AcrobatSDIWindow
GroupAdd, pagdowntoswitchtab, ahk_exe notepad++.exe
GroupAdd, pagdowntoswitchtab, ahk_exe code.exe
return



#IfWinActive ahk_group f10ctrlw_insteadof_altf4
Ins::
Send, ^w
return

#IfWinActive ahk_group pagdowntoswitchtab
$PgUp::
Send, ^+{Tab}}
return
	
$PgDn::
Send, ^{Tab}}
return

#IfWinActive





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;random;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^7::suspend
return

Tab::Send, {Esc}
CapsLock::Send, {Tab}

!PgUp::Send,{PgUp}
!PgDn::Send,{PgDn}

!`::Send,{ASC 0180}

`::Send, {ASC 0126}

+`::Send, {ASC 0096}

^+SPACE::  Winset, Alwaysontop, , A


;$[::Send,{=}

;$+[::Send,{+}

;$=::Send,{[}


;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; number  row ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

;$1::Send, {#}

;$2::
;Send, {\}
;return

;$+2::
;Send, {|}
;return

;$3::
;Send, {{}
;return

;$+3::
;Send, {@}
;return

;$4::
;Send, {$}
;return

;$5::Send,{Up}

;$6::
;Send, {^}
;return

;$7::
;Send,{}}
;return

;$8::
;Send, {*}
;return

;$9::
;Send, {(}
;return
;$0::
;Send,{)}
;return

;;;; FunctionRow ;;;

F1::
Send, ^z
return

F2::
Send, ^x
return

F3::
Send, ^c
return

F4::
Send, ^v
return

F9::
Send, ^f
return

F10::
Send, !{Tab}
return

F11::Send,^t
F12::Send,^+t


Ins::
Send, !{F4}
return

F5::
if !WinExist("ahk_exe chrome.exe")
{
Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
}
else
{	
	WinGet, WinListVariable, List, ahk_exe chrome.exe
	if (WinListVariable>1)
	{
		WinGet, ActiveExe, ProcessName, A
		if (ActiveExe=="chrome.exe")
		{
		WinSet, Bottom,, A
		}
	}
	WinActivate, ahk_exe chrome.exe
}
return


F6::
if !WinExist("ahk_exe code.exe")
{
Run "C:\Users\ischi\AppData\Local\Programs\Microsoft VS Code\Code.exe"
}
else
{
	WinGet, WinListVariable, List, ahk_exe code.exe
	if (WinListVariable>1)
	{
		WinGet, ActiveExe, ProcessName, A
		if (ActiveExe=="code.exe")
		{
		WinSet, Bottom,, A
		}
	}
	WinActivate, ahk_exe code.exe
}
return

F7::
if !WinExist("ahk_exe notepad++.exe")
{
Run notepad++.exe
}
else
{
	WinGet, WinListVariable, List, ahk_exe notepad++.exe
	if (WinListVariable>1)
	{
		WinGet, ActiveExe, ProcessName, A
		if (ActiveExe=="notepad++.exe")
		{
		WinSet, Bottom,, A
		}
	}
	WinActivate, ahk_exe notepad++.exe
}
return

F8::
if !WinExist("ahk_exe Teams.exe")
{
Run "C:\Users\mischia\AppData\Local\Microsoft\Teams"
}
else
{
	WinGet, WinListVariable, List, ahk_exe Teams.exe
	if (WinListVariable>1)
	{
		WinGet, ActiveExe, ProcessName, A
		if (ActiveExe=="Teams.exe")
		{
		WinSet, Bottom,, A
		}
	}
	WinActivate, ahk_exe Teams.exe
}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  MOUSE  ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


$RButton::MButton
$MButton::RButton


+WheelDown::
Send, {PgDn}
return

+WheelUp::
Send, {PgUp}
return

!WheelDown::
Send, {Volume_Down}
return

!WheelUp::
Send, {Volume_Up}
return

!LButton::
Send, {Volume_Mute}



;___________________________________

; !q::
;  CoordMode, Mouse, Screen ;
;  MouseGetPos, MouseX
;  if (MouseX > A_ScreenWidth) {
;    MouseMove, A_ScreenWidth/2, A_ScreenHeight/2, 0
;  } else {
;    MouseMove, 3*A_ScreenWidth/2, A_ScreenHeight/2, 0
;  }
; return

;ScrollLock::
;if !WinExist("ahk_exe OUTLOOK.exe")
;{
;Run "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
;}
;else
;{
;	WinGet, WinListVariable, List, ahk_exe OUTLOOK.exe
;	if (WinListVariable>1)
;	{
;		WinGet, ActiveExe, ProcessName, A
;		if (ActiveExe=="OUTLOOK.exe")
;		{
;		WinSet, Bottom,, A
;		}
;	}
;	WinActivate, ahk_exe OUTLOOK.exe
;}
;return

;Pause::
;Send, ^w
;return


;3::
;Send, {{}
;return

;4::
;Send, {}}
;return

;$+5::
;Send, {Text}#include
;return

;5::
;Send, {^}
;return

;6::
;Send, {`$}
;return

;7::
;Send, {&}
;return

;8::
;Send, {*}
;return

;9::
;Send, {text}(
;return

;0::
;Send, {text})
;return

;^Up::
;SendInput, {Up}{Up}{Up}{Up}
;return

;^Down::
;SendInput, {Down}{Down}{Down}{Down}
;return
