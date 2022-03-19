@echo off
cd %~dp0
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