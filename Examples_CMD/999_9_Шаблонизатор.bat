::���ᬠ�ਢ��� ����������� ⮣� �� 
::����誠 ����� ���� ᫮���� 祬 ���� ����� � ���஡�⭨����
:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
set rez=
call :setmy 5 4 3 2 
echo %rez%
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
:setmy
set counter=0
for %%i in (%*) do (
set /a counter=!counter!+1
 if "!counter!" EQU "1" ( call :x r 5)&&( set rez=!rez! %%i)&&( call :x l 5)
 if "!counter!" EQU "2" ( call :x r 10)&&( set rez=!rez! %%i)&&( call :x l 10)
 
 echo %%i
)
echo erger
exit /b
:x
for /L %%i in (1,1,%2) do (set rez=!rez! %1)
exit /b