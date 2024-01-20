:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
::dir
for %%‚ in (%cd%\*.*) do (echo %%‚)
::for %d in (*.bat) echo %d
pause
exit /b