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
::https://celitel.info/klad/nhelp/helpbat.php?dcmd=ex_string
set VarText=��ப�����஡���
echo %VarText%
set VarText="��ப� c �஡����"
echo %VarText%
set "VarText=��ப� c �஡���� ��� ����祪"
echo %VarText%
set "VarText=1234567890"
echo %VarText%
echo %VarText:~-3% - ����� ��᫥���� 3 ᨬ����
set "VarText=1234567890"
echo %VarText:~0,3% - ����� 3 ᨬ���� � �㫥���� ᨬ����
echo %VarText:~2,3% - ����� 3 ᨬ���� � ��ண� ᨬ����
echo %VarText:~1,-1% - ����� 3 ᨬ���� � ��ண� ᨬ����
set "VarText=�������� �����ப� � ��ப�"
echo %VarText:�����ப� =% - %VarText%
set "VarText=�������� �஡���� � ��ப�"
echo %VarText: =%
echo %VarText: =_% - ������ ��� �஡���� �� ����ન�����

set "VarText1=��ꥤ������"
set "VarText2=��ப"
echo %VarText1% %VarText2%
echo %VarText1%%VarText2%
::::::::::::::::::::::::::::::::::::::::::::::

set VarText1=Text
call :StrCount %VarText1% C
echo %C%
::::::::::::::::::::::::::::::::::::::::::::::
TIMEOUT /T 1
pause
exit /b
::::::::::::::::::::::::::::::::::::::::::::::
:StrCount
set VarText1=%1
set %2=0
:sfklhgkjsdkjdsh
if defined VarText1 (
 set VarText1=!VarText1:~1!
 set /a %2=!%2!+1
goto :sfklhgkjsdkjdsh
)
::if defined FileWrite (echo "FileWrite - defined")
::if not defined FileWrite (echo "FileWrite - not defined")
exit /b
