::���ᬠ�ਢ��� ����������� ⮣� �� 
::����誠 ����� ���� ᫮���� 祬 ���� ����� � ���஡�⭨����
:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::
call :FuncMenu
(TIMEOUT /T 1)&&(pause)&&(exit /b)
::::::::::::::::::::::::::::::::::::::::::::
:FuncMenu
	setlocal EnableDelayedExpansion
	SetLocal
		set /a IdSelect=1
		set /a IdWork=0
		set /a IdCount=0
		::set /a m205019082024=2
		:returnPoint_205019082024
		::DefaultValues
		cls
		echo ErrorLevel=%ErrorLevel%
		set /a IdCount=-1
		::Viev		
		:::::::::::::::::::::::::::::::::::::::::::::::::::
			set /a IdCount=%IdCount%+1
			if %IdSelect% EQU %IdCount% (<nul set /p strTemp=*)
			echo ��室
		:::::::::::::::::::::::::::::::::::::::::::::::::::
			set /a IdCount=%IdCount%+1
			if %IdSelect% EQU %IdCount% (<nul set /p strTemp=*)
			echo ��
		:::::::::::::::::::::::::::::::::::::::::::::::::::
			set /a IdCount=%IdCount%+1
			if %IdSelect% EQU %IdCount% (<nul set /p strTemp=*)
			echo ���
		:::::::::::::::::::::::::::::::::::::::::::::::::::
			set /a IdCount=%IdCount%+1
			if %IdSelect% EQU %IdCount% (<nul set /p strTemp=*)
			echo ����������
		:::::::::::::::::::::::::::::::::::::::::::::::::::
		choice /c wse
		if %ErrorLevel% EQU 1 (set /a IdSelect=%IdSelect%-1)
		if %ErrorLevel% EQU 1 (if %IdSelect% LSS 0 set /a IdSelect=%IdCount%)
		if %ErrorLevel% EQU 2 (set /a IdSelect=%IdSelect%+1)
		if %ErrorLevel% EQU 2 (if %IdSelect% GTR %IdCount% set /a IdSelect=0)
		if %ErrorLevel% EQU 3 (set IdWork=IdWork)
		goto :returnPoint_205019082024
	endlocal
exit /b
::������� ��砫� ����
:begin_205019082024

choice /c wse

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
:::::::::::::::::::::::::::::::::::::::::::::