@echo off
if "%cd%" EQU "C:\Program Files\Notepad++" (
	cd C:\D\Git_Hub\HowTo_Bat\Base_L0
)
echo %cd%
echo ::::::::::::::::::::::::::::::::::::::::::::::::
rem Чтобы добавить переменную, в командной строке введите
set FileWrite="%date% %time%.html"
if defined FileWrite (echo "FileWrite - defined")
if not defined FileWrite (echo "FileWrite - not defined")
rem Чтобы удалить переменную, в командной строке введите: 
set FileWrite=
if defined FileWrite (echo "FileWrite - defined")
if not defined FileWrite (echo "FileWrite - not defined")
::
set FileWrite="%date% %time%.html"
Echo %FileWrite%

set qwe=0
if not defined qwe (echo not)
if defined qwe (echo sdfghjkl)
::Echo %FileWrite%
TIMEOUT /T 10
pause