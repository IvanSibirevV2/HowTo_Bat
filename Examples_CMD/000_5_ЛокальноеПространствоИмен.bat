:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
::����୮� ��᢮���� � ��६����� ���祭�� ���⫨ �����쭮�� ����࠭�⢠
::�ਢ���� � ��࠭���� ��ண� ���祭�� ��६����� � �⥪� �맮�� �㭪樨
::� �����饭�� �� �⥪� �맮�� �㭪�� ��ண� ���祭�� 
::�� ���⨦���� ���� �����쭮�� ����࠭�⢠
set flag=true
echo flag=%flag%
setlocal
	set flagg=%flag%
	echo setlocal
	set flag=false
	echo flag=%flag%
	echo flagg=%flagg%
	echo endlocal
endlocal
echo flag=%flag%
echo �ਢ�� ���
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 10)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
