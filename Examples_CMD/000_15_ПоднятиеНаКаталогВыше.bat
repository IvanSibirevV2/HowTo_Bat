:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp1" ((start notepad++ %1)&&(exit))
cd %~dp1
title %~1
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
