:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
::� ����� ��� ����� ��������::437	���::850	������������� (�������� I)
::852	��������� � ����������� ������ (�������� II)::855	��������� (�������)::857	��������
::860	�������������::861	����������::863	����������� (������)
::865	�������������::866	�������::869	����������� ���������
:::::::::::::::::::::::::::::::::::::::::::::

echo �������� ������� �����
chcp 1251 >nul
echo �������� ������� �����
echo.
echo �� ������ ��� ������ ������ ������
echo.
::���������� ������� �������� �� ����� ������
set NL=^& echo.
echo ������������� %NL%^
������ %NL%^
���
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
