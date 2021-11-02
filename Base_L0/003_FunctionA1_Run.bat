@echo off
	::Надо будет, папку запуска поменяете...
	cd "C:\D\Git_Hub\HowTo_Bat\Base_L0"
	call :Main
pause
exit /b
:Main
	003_FunctionA1.bat ":Main"
	::Ну или так
	:: call "005_FunctionA1.bat" ":Main"
exit /b