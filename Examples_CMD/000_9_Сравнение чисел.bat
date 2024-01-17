:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
set /a per1= 20
echo "per1=%per1%"
set /a per2= 3
echo "per2=%per2%"

if %per1% EQU %per2% echo "per1 == per2  "
if %per1% NEQ %per2% echo "per1 <> per2  "
if %per1% LSS %per2% echo "per1 < per2  "
if %per1% LEQ %per2% echo "per1 <= per2  "
if %per1% GTR %per2% echo "per1 > per2  "
if %per1% GEQ %per2% echo "per1 >= per2  "
::EQU	равно;NEQ	не равно
::LSS	меньше;LEQ	меньше или равно
::GTR	больше;GEQ	больше или равно
::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
