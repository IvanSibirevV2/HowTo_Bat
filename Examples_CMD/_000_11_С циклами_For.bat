:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp1" ((start notepad++ %1)&&(exit))
cd %~dp1
title %~1
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
for /L %%i in (1,1,10) do (echo i = %%i)
echo.
::цикл по всем файлам в папке
for  %%f in (*) do (echo %%~nxf)
echo.
for  %%f in (*.txt *.exe) do (echo %%~nxf)
for /d %%a in (*) do echo %%a
for /r %%a in (*.*) do echo %%a
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::