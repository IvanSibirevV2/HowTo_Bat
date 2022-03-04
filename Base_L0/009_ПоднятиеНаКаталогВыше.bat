@echo off
cd %~dp0
echo %cd%
CD ..\
Echo %CD%
Echo ****************************
Echo cmd.exe will be started
Echo Await and send _exit_
cmd.exe
TIMEOUT /T 100