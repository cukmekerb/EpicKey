mxpos = 0
mypos = 0
#IfWinActive ahk_class Photoshop
MButton::
Send {Blind}{Space down}
MouseGetPos, mxpos, mypos
SendEvent {Click mxpos, mypos, down}
KeyWait, MButton, U
MouseGetPos, mxpos, mypos
SendEvent {Click mxpos, mypos, up}
Send {Blind}{Space up}
return
RAlt::
Send {Blind}{Space down}
MouseGetPos, mxpos, mypos
SendEvent {Click mxpos, mypos, down}
KeyWait, RAlt, U
MouseGetPos, mxpos, mypos
SendEvent {Click mxpos, mypos, up}
Send {Blind}{Space up}
return
=::
Send, ^{NumpadAdd}
return
-::
Send, ^{NumpadSub}
return