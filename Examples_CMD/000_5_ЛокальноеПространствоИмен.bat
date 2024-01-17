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
::Повторное присвоение в переменную значения внутли локального пространства
::приводит к сохранению старого значения переменной в стекк вызова функции
::и возвращению из стека вызова функии старого значения 
::при достижении конца локального пространства
set flag=true
echo flag=%flag%
setlocal
	set flagg=%flag%
	echo setlocal
	set flag=false
	echo flag=%flag%
	echo flagg=%flagg%
	echo endlocal
endlocal
echo flag=%flag%
echo Привет Мир
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 10)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
