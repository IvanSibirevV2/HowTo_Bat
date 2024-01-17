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
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 10)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::