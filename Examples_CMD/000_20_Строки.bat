:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::
goto StrCountEnd
	:StrCount
		set VarText1=%1
		set %2=0
		:sfklhgkjsdkjdsh
		if defined VarText1 (
			set VarText1=!VarText1:~1!
			set /a %2=!%2!+1
			goto :sfklhgkjsdkjdsh
		)
	exit /b
	:TestStrCount
		set VarText1=Text
		echo %VarText1%
		call :StrCount %VarText1% C
		echo %C%
		pause
	exit /b
:StrCountEnd
call :TestStrCount
:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::
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

::::::::::::::::::::::::::::::::::::::::::::::
TIMEOUT /T 1
pause
exit /b
::::::::::::::::::::::::::::::::::::::::::::::
