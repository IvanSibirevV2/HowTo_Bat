@echo off
	::Надо будет, папку запуска поменяете...
	cd "C:\D\Git\HowTo_Bat_Git0\Base"
	call :Main
pause
exit /b
:Main
	005_FunctionA1.bat ":Main"
	::Ну или так
	:: call "005_FunctionA1.bat" ":Main"
exit /b