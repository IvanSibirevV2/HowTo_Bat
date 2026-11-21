:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
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