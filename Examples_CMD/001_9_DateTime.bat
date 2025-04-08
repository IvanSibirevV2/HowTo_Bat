:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
echo DateTime.Now=%date%
echo DateTime.Now.Year=%date:~-4%
echo DateTime.Now.Month=%date:~3,2%
echo DateTime.Now.Day=%date:~0,2%
echo DateTime.Now.Hour=%TIME:~0,2%
echo DateTime.Now.Minutes=%TIME:~3,2%
echo DateTime.Now.Seconds=%TIME:~6,2%
echo DateTime.Now.Tik=%TIME:~9%
echo %username%
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 10)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::