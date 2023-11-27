:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
:::::::::::::::::::::::::::::::::::::::::::::
	set A=WWW
	::call :defVar A www
	echo A= %A%
	call :getVar A B
	echo B=%B%
	echo :::::::::::::::::::::::::::::::::::::::::::::
	set FName=54236452354275482
	set !FName!.id=010
	echo %FName%
	echo %!FName!.id%
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
:getVar
	If "%3" EQU "" (call :getVar %1 %2 %%%1%%) else set %2=%3
exit /b 0
:getVarVar
	::::if defined %3
	::set %1=%2
exit /b 0
::Попробуйте следующее. Оно возможно работает вернее
::set FName=%54236452354275482%
::set !FName!.id=01
::echo %!FName!.id%