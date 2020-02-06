mxpos = 0
mypos = 0
poop = 0
F7::
if(poop == 1){
poop = 0
}
else{
poop = 1
}
return
*Right::
if(poop == 1){
MouseGetPos, mxpos, mypos
MouseMove, mxpos+15,mypos,1
}
else{
Send {Right}
}
return
^LButton::RButton
*Left::
if(poop == 1){
MouseGetPos, mxpos, mypos
MouseMove, mxpos-15,mypos,1
}
else{
Send {Left}
}
return
*Up:: 
if(poop == 1){
MouseGetPos, mxpos, mypos
MouseMove, mxpos,mypos-15,1
}
else{
Send {Up}
}
return
*Down::
if(poop ==1){
MouseGetPos, mxpos, mypos
MouseMove, mxpos,mypos+15,1
}
else{
Send {Down}
}
return
*RShift::
if(poop ==1){
MouseGetPos, mxpos, mypos
SendEvent {Click mxpos, mypos, down}
KeyWait, RShift, U
SendEvent {Click mxpos, mypos, up}
}
else{
Send {Shift}
}
return
*RControl::
Click, right
return
#IfWinNotActive ahk_class Photoshop
*RAlt::
if(poop == 1){
MouseGetPos, mxpos, mypos
Click, down, middle
KeyWait, RAlt, U
Click, up, middle
}
else{
Send {Alt}
}
return