::���ᬠ�ਢ��� ����������� ⮣� �� 
::����誠 ����� ���� ᫮���� 祬 ���� ����� � ���஡�⭨����
:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
::::::::::::::::::::::::::::::::::::::::::::
::������� ��砫� ����
set /a m205019082024=2
:begin_205019082024
cls
echo ErrorLevel=%ErrorLevel%
::���ᮢ�� �㭪⮢ ����
(if %m205019082024% EQU 0 (<nul set /p strTemp=*))&(echo ��室)
(if %m205019082024% EQU 1 (<nul set /p strTemp=*))&(echo ��)
(if %m205019082024% EQU 2 (<nul set /p strTemp=*))&(echo ���)
(if %m205019082024% EQU 3 (<nul set /p strTemp=*))&(echo ����������)
::��ࠢ���騥 ��������
set /a m205019082024m=3
choice /c wse
if %ErrorLevel% EQU 1 echo 1 w
if %ErrorLevel% EQU 1 (set /a m205019082024=%m205019082024%-1)
if %ErrorLevel% EQU 1 if %m205019082024% LSS 0 set /a m205019082024=%m205019082024m%
if %ErrorLevel% EQU 1 goto :begin_205019082024
if %ErrorLevel% EQU 2 echo 2 s
if %ErrorLevel% EQU 2 (set /a m205019082024=%m205019082024%+1)
if %ErrorLevel% EQU 2 if %m205019082024% GTR %m205019082024m% set /a m205019082024=0
if %ErrorLevel% EQU 2 goto :begin_205019082024
::���� �㭪樮���
if %ErrorLevel% EQU 3 if %m205019082024% EQU 0 echo ��室
if %ErrorLevel% EQU 3 if %m205019082024% EQU 1 echo ��
if %ErrorLevel% EQU 3 if %m205019082024% EQU 1 goto :begin_205019082024
if %ErrorLevel% EQU 3 if %m205019082024% EQU 2 echo ���
if %ErrorLevel% EQU 3 if %m205019082024% EQU 2 goto :begin_205019082024
if %ErrorLevel% EQU 3 if %m205019082024% EQU 3 echo ����������
if %ErrorLevel% EQU 3 if %m205019082024% EQU 3 goto :begin_205019082024
::�������⥫�� ��室 �� ����
if %ErrorLevel% EQU 3 echo 3 e
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::