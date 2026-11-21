:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
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
