:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
	call:factorial_Test
	call:factorial_V2_Test
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
rem ----------------------------------------------------------------------------------
rem	function:		factorial
rem	param: 
rem	return value:	%2=int 
rem ----------------------------------------------------------------------------------
rem Предупреждение setlocal - работает криво
rem не уверен на сколько все надежно работает,
rem но пока этот прием работает пускай работает
rem PS.
rem Если делаете локальную переменную в функции,
rem то не стесняйтеся её страшно и непонятно называть
rem [[Название функци]_[Название переменной]]
rem Дело в том что если будете писать что-то 
rem большое и страшное "UnDefin" какой либо переменной 
rem может обранить вашу логику
:factorial
	set /a %2=1
	if %1 LEQ 1 ( exit /b )
	set /a factorial_qwe= %1-1	
	call:factorial %factorial_qwe% factorial_rez
	set /a %2=%1*%factorial_rez%
exit /b
rem ----------------------------------------------------------------------------------
:factorial_Test
	echo factorial_Test
	set /a past=3
	call:factorial %past% rez
	echo "rez! = "%rez%
exit /b
rem ----------------------------------------------------------------------------------
rem	function:		factorial_V2
rem	param: 
rem	return value: null=> %RESULT%
rem ----------------------------------------------------------------------------------
rem Этот способ содержит меньше тяжелой наркомании
rem Но и при этом технологически "менее дееспособный"
:factorial_V2
	set /a RESULT=0
	if %1 LEQ 1 ( set RESULT=1 & exit /b )
	set /a factorial_PARAM=%1 - 1
	call:factorial_V2 %factorial_PARAM%
	set /a RESULT=%1 * %RESULT%
exit /b
rem ----------------------------------------------------------------------------------
:factorial_V2_Test
	echo factorial_V2_Test
	set /a past=3
	call:factorial_V2 %past%
	echo "past! = "%RESULT%
exit /b
rem ----------------------------------------------------------------------------------