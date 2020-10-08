@echo OFF
	cd "C:\D\Git\HowTo_Bat_Git0\Base_L1"
	call :Main
pause
exit /b
:Main
	DateTime.bat ":Main"
	::call "DateTime.bat" ":Main"
exit /b