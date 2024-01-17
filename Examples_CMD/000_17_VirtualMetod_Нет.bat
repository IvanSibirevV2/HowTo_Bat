:::::::::::::::::::::::::::::::::::::::::::::

@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
Echo %CD%
set NL=^& echo.
set VirMet=(%NL%^
set EAX=0%NL%^
set EBX=0%NL%^
)
echo _%VirMet%_

::%VirMet%
set ECX=0
set EDX=0

ECHO EAX=%EAX%
ECHO EBX=%EBX%
ECHO ECX=%ECX%
ECHO EDX=%EDX%
::set NL=^& echo.
::echo Многострочный %NL%^
::Привет %NL%^
::Мир


:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::