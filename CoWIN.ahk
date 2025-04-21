#NoEnv
; #Warn 
SendMode Input
SetWorkingDir %A_ScriptDir%  

^!b::

MouseGetPos, Slot1X, Slot1Y
SoundBeep, 750, 500
Sleep, 1000
MouseGetPos, Slot2X, Slot2Y
SoundBeep, 750, 500
Sleep, 1000
MouseGetPos, Slot3X, Slot3Y
SoundBeep, 750, 500
Sleep, 1000
MouseGetPos, Slot4X, Slot4Y
SoundBeep, 750, 500
Sleep, 2000
MouseGetPos, EnterX, EnterY
SoundBeep, 750, 500
Loop
{
MouseMove, Slot1X, Slot1Y, 1
Sleep, 2500
Click
Loop, 50
{
MouseMove, EnterX, EnterY, 1
Click
Sleep 200
}
MouseMove, Slot2X, Slot2Y, 1
Sleep, 2500
Click
Loop, 50
{
MouseMove, EnterX, EnterY, 1
Click
Sleep 200
}
MouseMove, Slot3X, Slot3Y, 1
Sleep, 2500
Click
Loop, 50
{
MouseMove, EnterX, EnterY, 1
Click
Sleep 200
}
MouseMove, Slot4X, Slot4Y, 1
Sleep, 2500
Click
Loop, 50
{
MouseMove, EnterX, EnterY, 1
Click
Sleep 200
}
}

^!a::

CoordMode, Pixel, Screen
Sleep, 1000
MouseGetPos, FirstX, FirstY
SoundBeep, 750, 1000
Sleep, 5000
MouseGetPos, SecondX, SecondY
SoundBeep, 750, 1000
Sleep, 500

MsgBox, 4,, Would you also like to book a slot if it is available next week?
IfMsgBox Yes
{
	MsgBox, Okay, move your mouse to the top right of the first slot's rectangle
	Sleep, 5000
	MouseGetPos, ScrollX, ScrollY
	SoundBeep, 750, 1000
	PixelSearch, Xofscroll, Yofscroll, (FirstX+300), FirstY, (SecondX+150), (SecondY-40), 0xffe4dd, 1, Fast

	Loop
	{
	Click, WheelDown 30
	Sleep, 500
	Loop
	{
	Sleep, 100
	PixelSearch, Xofscroll, Yofscroll, (FirstX+300), FirstY, (SecondX+150), (SecondY-40), 0xffe4dd, 1, Fast
	PixelGetColor, outputcolor, Xofscroll, (Yofscroll-2)
	if (outputcolor = "0xF1F1F1")
	{
	Click, WheelUp 3
	Sleep, 100
	PixelSearch, OutXpixel, OutYpixel, FirstX, FirstY, SecondX, SecondY, 0x00beff, 2, Fast
	PixelSearch, OutXsecondpixel, OutYsecondpixel, FirstX, FirstY, SecondX, SecondY, 0x8dd1a8, 2, Fast
	if (OutXpixel > 0 or OutXsecondpixel > 0 or OutYpixel > 0 or OutYsecondpixel > 0)
	{
		SoundBeep, 750, 3000
		Exit
	}
	} else {
	break
	}
	}
	
	Send {Right}
	Sleep 750
	Click, WheelDown 7
	Sleep 750
	PixelSearch, OutXpixel, OutYpixel, FirstX, FirstY, SecondX, SecondY, 0x00beff, 2, Fast
	PixelSearch, OutXsecondpixel, OutYsecondpixel, FirstX, FirstY, SecondX, SecondY, 0x8dd1a8, 2, Fast
	if (OutXpixel > 0 or OutXsecondpixel > 0 or OutYpixel > 0 or OutYsecondpixel > 0)
	{
		SoundBeep, 1000, 5000
		Exit
	}
	Send {Left}
	Sleep 750
	Click, WheelDown 3
	Sleep 1000
	}

} else {

	MsgBox, Okay, move your mouse to the top right of the first slot's rectangle
	Sleep, 5000
	MouseGetPos, ScrollX, ScrollY
	SoundBeep, 750, 1000
	PixelSearch, Xofscroll, Yofscroll, (FirstX+300), FirstY, (SecondX+150), (SecondY-40), 0xffe4dd, 1, Fast

	Loop
	{
	Click, WheelDown 30
	Sleep, 500
	Loop
	{
	Sleep, 100
	PixelSearch, Xofscroll, Yofscroll, (FirstX+300), FirstY, (SecondX+150), (SecondY-40), 0xffe4dd, 1, Fast
	PixelGetColor, outputcolor, Xofscroll, (Yofscroll-2)
	if (outputcolor = "0xF1F1F1")
	{
	Click, WheelUp 3
	Sleep, 100
	PixelSearch, OutXpixel, OutYpixel, FirstX, FirstY, SecondX, SecondY, 0x00beff, 2, Fast
	PixelSearch, OutXsecondpixel, OutYsecondpixel, FirstX, FirstY, SecondX, SecondY, 0x8dd1a8, 2, Fast
	if (OutXpixel > 0 or OutXsecondpixel > 0 or OutYpixel > 0 or OutYsecondpixel > 0)
	{
		SoundBeep, 750, 3000
		Exit
	}
	} else {
	break
	}
	}
	
	Send {Right}
	Sleep 1000
	Send {Left}
	Sleep 750
	Click, WheelDown 3
	Sleep 1000
	}
}

e::
ExitApp

^!p::
Pause