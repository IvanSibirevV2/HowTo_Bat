::���ᬠ�ਢ��� ����������� ⮣� �� 
::����誠 ����� ���� ᫮���� 祬 ���� ����� � ���஡�⭨����
:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0 
setlocal EnableDelayedExpansion
:::::::::::::::::::::::::::::::::::::::::::::
echo %cd%
::if %ErrorLevel% EQU 1 (echo q)

::call :MenuEngine :Mark1 :Mark2 :Mark3
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
:ME2
rem MenuEngineV2
rem � 祬 ����...
rem �ᥣ� ��� ������.
rem ��ࢠ� Q - �������ࢠ��� ����� �롮� �� ᫥���騩.
rem ���� E - ����᪠�� ⥪�騩 �㭪�
rem ��� ॠ����樨 �ॡ����
rem 1 - ������殢���� ᯨ᮪
rem 2 - �뢮� �� �࠭ ����⮢ ������殢������ ᯨ᪠
rem 3 - 㤠���� ��ࢮ�� ����� ������殢������ ᯨ᪠
rem 4 - ���������� � �����
::choice /c qe
::echo %ErrorLevel%
exit /b
:MenuEngine
setlocal
 set _id=0
 :MenuEngine_begin
  set _counter=0
  set _target=
  ::�뢮� �� �࠭
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