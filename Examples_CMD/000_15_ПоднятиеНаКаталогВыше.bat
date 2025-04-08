:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
:::::::::::::::::::::::::::::::::::::::::::::
echo %cd%
CD ..\
Echo %CD%
Echo ****************************
Echo cmd.exe will be started
Echo Await and send _exit_
cmd.exe
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
