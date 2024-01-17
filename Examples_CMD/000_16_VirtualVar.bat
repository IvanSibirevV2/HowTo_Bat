:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
	::Это виртуальные переменные
	::Зачем оно так надо,Чтобы создавать массивы напимер
	::Способ первый
	set A8=WWW
	echo A8= %A8%
	call :getVar A8 B
	echo B=%B%
	echo :::::::::::::::::::::::::::::::::::::::::::::
	::Способ второй
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