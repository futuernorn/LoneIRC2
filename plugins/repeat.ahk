#Include Socket.ahk
#SingleInstance, Force

Params := []
Loop, %0%
	Params[A_Index] := %A_Index%

TCP := new SocketTCP()
TCP.Connect("localhost", 26656)
TCP.SendText(Params[1] "," Params[2])
ExitApp