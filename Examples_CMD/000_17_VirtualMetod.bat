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