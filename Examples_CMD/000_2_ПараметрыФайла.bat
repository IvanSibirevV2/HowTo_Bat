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
::�������� ���� ��������� ��������� ^%^0 ^%^1 ... %^9. ^
::�� ��� %^0 - ���� �� ����� ��� ��� ���� � ������������ �����.
echo 1.  %~0
echo 2.  %~f0
echo 3.  %~d0
echo 4.  %~p0
echo 5.  %~n0
echo 6.  %~x0
echo 7.  %~s0
echo 8.  %~a0
echo 9.  %~t0
echo 10. %~z0
echo.
echo 11. %~dp0
echo 12. %~nx0
echo 14. %~ftza0
echo.
:
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 10)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::