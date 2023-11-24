:::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" start notepad++ %0 
cd %~dp0
:::::::::::::::::::::::::::::::::
Echo %CD%
Echo ****************************
Echo cmd.exe will be started
Echo Await and send _exit_
::Обычно ставят ключ i
::Ноесли Вы пишете батник прокатит и так
cmd.exe
TIMEOUT /T 100