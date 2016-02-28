CoordMode, Pixel, Relative;
CoordMode, Mouse, Relative;
SetTitleMatchMode, 2
FileInstall, q.png, %A_Temp%\q.png, 1
FileInstall, w.png, %A_Temp%\w.png, 1
FileInstall, e.png, %A_Temp%\e.png, 1
FileInstall, one.png, %A_Temp%\one.png, 1
FileInstall, two.png, %A_Temp%\two.png, 1
FileInstall, three.png, %A_Temp%\three.png, 1

F2::
_list := Array()
_list.Insert({"email": "**", "password": "**"})
_list.Insert({"email": "**", "password": "**"})

Loop, 5 {
	Loop, % _list.Length() {
		Send, % _list[A_Index].email
		Send {TAB}
		Send, % _list[A_Index].password
		Sleep,300
		Send {Enter}
		Sleep,1000
		Send {down}
		Sleep,300
		Send {Enter}
		Sleep,1000
		Send {Enter}
		Sleep,1000
		Send {Enter}
		Sleep,3000
		Send {Enter}
		Sleep,1000
		Click, 100,200
		Loop{
			ImageSearch, reX, reY, 0,0,800,600,*transBlack *80 %A_Temp%\q.png
			if ( ErrorLevel = 0 ){
				MouseClick, Left, reX, reY,1
			break
			}
		}

		Loop{
			ImageSearch, reX, reY, 0,0,800,600,*transBlack *80 %A_Temp%\w.png
			if ( ErrorLevel = 0 ){
				MouseClick, Left, reX, reY,1
			break
			}
		}
		Loop{
			ImageSearch, reX, reY, 0,0,800,600,*transBlack *80 %A_Temp%\e.png
			if ( ErrorLevel = 0 ){
				MouseClick, Left, reX, reY,1
			break
			}
		}
		Loop{
			ImageSearch, reX, reY, 0,0,800,600,*transBlack *80 %A_Temp%\one.png
			if ( ErrorLevel = 0 ){
				MouseClick, Left, reX, reY,1
			break
			}
		}
		Loop{
			ImageSearch, reX, reY, 0,0,800,600,*transBlack *80 %A_Temp%\two.png
			if ( ErrorLevel = 0 ){
				MouseClick, Left, reX, reY,1
			break
			}
		}
		Loop{
			ImageSearch, reX, reY, 0,0,800,600,*transBlack *80 %A_Temp%\three.png
			if ( ErrorLevel = 0 ){
				MouseClick, Left, reX, reY,1
			break
			}
		}

		Send {Enter}
		Sleep,10000
		Click 41, 383
		Sleep,1000
		Click 90, 380
		Sleep,1000
		Send {Down}
		Sleep,300
		Send {Enter}
		Sleep,300
		Send {Space}
		Sleep,300
		Send {Space}
		Sleep,300
		Send {Right}
		Sleep,300
		Send {Right}
		Sleep,300
		Send {Enter}
		Sleep,300
		Send {Space}
		Sleep,300
		Send {Space}
		Sleep,300
		Send {ESC}
		Sleep,500
		Send {ESC}
		Sleep 300
		Send {Up}
		Sleep,300
		Send {Enter}
		Sleep,5000
		Send {ESC}
		Sleep,1000
		Send {ESC}
		Sleep,1000
		Send {Enter}
		Sleep,2000
	}
	Sleep,10000
}