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
::������ 䠩� �ਭ����� ��ࠬ���� ^%^0 ^%^1 ... %^9. ^
::?�ࠬ��஢ ����⭮�� ����᪠ ����� ���� ᪮�쪮 㣮���, 
::?� �ਫ�筮 ��⠥��� �� 9 ��ࠬ��஢
::?���� ��������,  ���� ��⮤ ᤢ����騩 ��ࠬ���� ����⭮�� ����᪠ � ����
::?� ���� ��� �� �� �ॡ�������
::?����ਬ ��ࠬ���� ����⭮�� ����᪠ ������ �⮣� ��⭨��
echo %%0%%=%0
echo %%1%%=%1
echo %%2%%=%2
echo %%3%%=%3
echo %%4%%=%4
echo %%5%%=%5
echo %%6%%=%6
echo %%7%%=%7
echo %%8%%=%8
echo %%9%%=%9

echo ::::::::::::::::::::::::::::::::::
::?����ਬ ��ࠬ���� ����⭮�� ����᪠ �����쭮� �㭪樨
call :foo q w e r t y u i o a s d f g h j k

:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 10)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::


:foo
	echo %%0%%=%0
	echo %%1%%=%1
	echo %%2%%=%2
	echo %%3%%=%3
	echo %%4%%=%4
	echo %%5%%=%5
	echo %%6%%=%6
	echo %%7%%=%7
	echo %%8%%=%8
	echo %%9%%=%9	
	echo %%10%%=%10
	echo %%15%%=%15
	echo �뢮� ���� ��� ��ࠬ��� 䠩�� ����� ��ப��
	echo %*
	for %%i in (%*) do (echo _%%i_)
	set qwertyuiop=%*
	echo %qwertyuiop%
	echo �뢮� ���� ��� ��ࠬ��� 䠩�� �१ ᤢ��
	:MenuEngine_For_Begine
		::���� ������� � ���
		::SHIFT 
		::������� �� �஬� ����� ����
		SHIFT /2
		echo %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
		if "%2" EQU "" goto :MenuEngine_For_end
		::...
	goto :MenuEngine_For_Begine 
	:MenuEngine_For_end
	echo � ⥯��� ���� � ����
exit /b