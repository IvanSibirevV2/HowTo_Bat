:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
echo Montana Menu is Exists
CHOICE /T 5 /C qa /CS /D q /M "[q(5s)(Pick);a(Pick)])
::if %ErrorLevel% EQU 1 (echo e)
::if %ErrorLevel% EQU 2 (echo w)
::if %ErrorLevel% EQU 3 (echo s)
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
:MenuEngine
setlocal
 set _id=0
 :MenuEngine_begin
  set _counter=0
  set _target=
  ::�뢮� �� ��࠭
  for %%i in (%*) do ((call %%i)&(set /a _counter=!_counter!+1))
  choice /c ews  
  if %ErrorLevel% EQU 2 ((echo w)&(set /a _id= %_id%-1)&(set %ErrorLevel%=0))
  if %ErrorLevel% EQU 3 ((echo s)&(set /a _id= %_id%+1)&(set %ErrorLevel%=0))
  if %_id% LSS 0 set /a _id=%_counter%-1
  if %_id% GEQ %_counter% set _id=0
  set _counter=%_id% 
  if %ErrorLevel% EQU 1 (call %_target% do)
 goto :MenuEngine_begin
endlocal
exit /b

:Mark1
if "%1" EQU "" (if "%_id%" EQU "%_counter%" ((<nul set /p strTemp=*)&(set _target=%0))
 echo %_counter%. %0. Exit
)else (if %_id% EQU %_counter% ((TIMEOUT /T 2)&(Exit)))
exit /b
:Mark2
if "%1" EQU "" (if "%_id%" EQU "%_counter%" ((<nul set /p strTemp=*)&(set _target=%0))
 echo %_counter%. %0. Menu_2
)else (if %_id% EQU %_counter% (echo ________Menu_1)&(pause))
exit /b
:Mark3
if "%1" EQU "" (if "%_id%" EQU "%_counter%" ((<nul set /p strTemp=*)&(set _target=%0))
 echo %_counter%. %0. Menu_3
)else (if %_id% EQU %_counter% (echo ________Menu_2)&(pause))
exit /b