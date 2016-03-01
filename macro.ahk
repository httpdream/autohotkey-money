CoordMode, Pixel, Relative;
CoordMode, Mouse, Relative;
SetTitleMatchMode, 2
FileInstall, q2.png, %A_Temp%\q.png, 1
FileInstall, w2.png, %A_Temp%\w.png, 1
FileInstall, e2.png, %A_Temp%\e.png, 1
FileInstall, 12.png, %A_Temp%\one.png, 1
FileInstall, 22.png, %A_Temp%\two.png, 1
FileInstall, 32.png, %A_Temp%\three.png, 1

F2::
_list := Array()
Loop, 40
	_list.Insert({"email": "**", "password": "**", "user": 1})

Loop, % _list.Length() {
	Send, % _list[A_Index].email
	Send {TAB}
	Send, % _list[A_Index].password
	Sleep,300
	Send {Enter}
	Sleep,1000
	Loop, % _list[A_Index].user
		Send {down}
		Sleep, 500
	Sleep,1000
	Send {Enter}
	Sleep,1000
	Send {Enter}
	Sleep,1000
	Send {Enter}
	Sleep,3000
	Send {Enter}
	Sleep,1000

	Sleep, 1000
	Click, 100,200
	Sleep, 1000
	Loop{
		ImageSearch, reX, reY, 100,201,683,507,*transBlack *100 %A_Temp%\q.png
		if ( ErrorLevel = 0 ){
			MouseClick, Left, reX + 10, reY + 10,1
		break
		}
	}

	Sleep, 1000
	Click, 100,200
	Sleep, 1000
	Loop{
		ImageSearch, reX, reY, 100,201,683,507,*transBlack *100 %A_Temp%\w.png
		if ( ErrorLevel = 0 ){
			MouseClick, Left, reX + 10, reY + 10,1
		break
		}
	}

	Sleep, 1000
	Click, 100,200
	Sleep, 1000
	Loop{
		ImageSearch, reX, reY, 100,201,683,507,*transBlack *100 %A_Temp%\e.png
		if ( ErrorLevel = 0 ){
			MouseClick, Left, reX + 10, reY + 10,1
		break
		}
	}

	Sleep, 1000
	Click, 100,200
	Sleep, 1000
	Loop{
		ImageSearch, reX, reY, 100,201,683,507,*transBlack *100 %A_Temp%\one.png
		if ( ErrorLevel = 0 ){
			MouseClick, Left, reX + 10, reY + 10,1
		break
		}
	}

	Sleep, 1000
	Click, 100,200
	Sleep, 1000
	Loop{
		ImageSearch, reX, reY, 100,201,683,507,*transBlack *100 %A_Temp%\two.png
		if ( ErrorLevel = 0 ){
			MouseClick, Left, reX + 10, reY + 10,1
		break
		}
	}

	Sleep, 1000
	Click, 100,200
	Sleep, 1000
	Loop{
		ImageSearch, reX, reY, 100,201,683,507,*transBlack *100 %A_Temp%\three.png
		if ( ErrorLevel = 0 ){
			MouseClick, Left, reX + 10, reY + 10,1
		break
		}
	}
	Sleep, 1000
	Send {Enter}

	;곧 바뀜~
	Sleep,20000
	Click 33, 338
	Sleep,1000

	Loop, 2 {
		Click 90, 337
		Sleep,1000
		Send {Down}
		Sleep,1000
		Send {Enter}
		Sleep,1000
		Send {Space}
		Sleep,1000
		Send {Space}
		Sleep,1000
		Send {Right}
		Sleep,1000
		Send {Right}
		Sleep,1000
		Send {Enter}
		Sleep,1000
		Send {Space}
		Sleep,1000
		Send {Space}
		Sleep,15000
		if A_Index > 1
			break
		Sleep,30000 ;18분
	}

	Send {ESC}
	Sleep,1000
	Send {ESC}
	Sleep 1000
	Send {Up}
	Sleep,1000
	Send {Enter}
	Sleep,10000
	
	Send {ESC}
	Sleep,1000
	Send {ESC}
	Sleep,1000
	Send {Enter}
	Sleep,5000
}
MsgBox, END