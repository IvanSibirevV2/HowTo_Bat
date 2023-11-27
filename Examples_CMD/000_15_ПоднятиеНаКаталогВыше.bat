:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
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
