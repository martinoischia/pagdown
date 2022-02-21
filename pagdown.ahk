; keep this groupadd on top
GroupAdd, altf4 , ahk_class ApplicationFrameWindow
GroupAdd, altf4 , ahk_class GraphApp
GroupAdd, altf4 , ahk_class RGLDevice
GroupAdd, altf4 , ahk_class TaskManagerWindow
return

^\::suspend
return

^a::
Send, {Left}
return
 
^d::
Send, {Right}
return

^i::
Send, {Up}
return

^j::
Send, {Down}
return


3::
Send, {{}
return

4::
Send, {}}
return

^Up::
SendInput, {Up}{Up}{Up}{Up}
return

^Down::
SendInput, {Down}{Down}{Down}{Down}
return

+WheelDown::
Send, {PgDn}
return

+WheelUp::
Send, {PgUp}
return

+Down::
Send, {PgDn}
return

+Up::
Send, {PgUp}
return

Home::
Send, !{Tab}
return



9::
Send, {text}(
return


0::
Send, {text})
return

^+SPACE::  Winset, Alwaysontop, , A

; !q::
;  CoordMode, Mouse, Screen ;
;  MouseGetPos, MouseX
;  if (MouseX > A_ScreenWidth) {
;    MouseMove, A_ScreenWidth/2, A_ScreenHeight/2, 0
;  } else {
;    MouseMove, 3*A_ScreenWidth/2, A_ScreenHeight/2, 0
;  }
; return

SetTitleMatchMode, 2

#IfWinActive ahk_exe chrome.exe
^1::
Send, ^+{Tab}}
return

^2::
Send, ^{Tab}}
return

#IfWinActive ahk_exe code.exe

+Down::
Send, +{Down}
return

+Up::
Send, +{Up}
return

#IfWinActive ahk_class AcrobatSDIWindow
^1::
Send, ^+{Tab}}
return

^2::
Send, ^{Tab}}
return


#IfWinActive ahk_group altf4 
^w::
Send, !{F4}
return


#IfWinActive ahk_class Notepad++


+Down::
Send, +{Down}
return

+Up::
Send, +{Up}
return