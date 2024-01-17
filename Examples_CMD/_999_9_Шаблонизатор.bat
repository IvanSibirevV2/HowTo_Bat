::Рассматриваем возможность того что 
::Менюшка может быть сложнее чем просто папка с микробатниками
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