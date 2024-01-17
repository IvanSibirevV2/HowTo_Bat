:::::::::::::::::::::::::::::::::::::::::::::
goto initEnd
call :init %0
:init
@echo off
if "%cd%\" EQU "%~dp1" ((start notepad++ %1)&&(exit))
cd %~dp1
title %~1
setlocal EnableDelayedExpansion
cls
exit /b
:initEnd
:::::::::::::::::::::::::::::::::::::::::::::
call :init %0
:::::::::::::::::::::::::::::::::::::::::::::
	set i=0
	:m_435765
		set Var%i%=%i%
		call :getVar Var%i% b%
		echo Var%i%=%b% 	
		set /a i=i+1
	if %i% LEQ 1000000000000000000000000 goto :m_435765
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
rem  извлечение значения виртуальной переменной
:getVar
	call :getVarVar %%%1%% %2
exit /b 0
rem Разименовывание виртуальной переменной
:getVarVar
	set %2=%1
exit /b 0
