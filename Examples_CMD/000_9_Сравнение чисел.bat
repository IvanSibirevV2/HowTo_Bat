:::::::::::::::::::::::::::::::::::::::::::::
goto initEnd
call :init %0
:init
@echo off
if "%cd%\" EQU "%~dp1" ((start notepad++ %1)&&(exit))
cd %~dp1
title %~1
setlocal EnableDelayedExpansion
cls
exit /b
:initEnd
:::::::::::::::::::::::::::::::::::::::::::::
call :init %0
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
::EQU	�����;NEQ	�� �����
::LSS	������;LEQ	������ ��� �����
::GTR	������;GEQ	������ ��� �����
::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
