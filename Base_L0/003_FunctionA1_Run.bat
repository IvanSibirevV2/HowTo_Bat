@echo off
cd %~dp0
	call :Main
pause
exit /b
:Main
	003_FunctionA1.bat ":Main"
	::Ну или так
	:: call "005_FunctionA1.bat" ":Main"
exit /b