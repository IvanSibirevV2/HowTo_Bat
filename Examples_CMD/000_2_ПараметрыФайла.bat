:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
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


pause
exit /b


: �� ����� ������� � ������� ����� ����� ��������� ���
echo %cd%
cd %~dp0
echo %cd%

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
call :foo q w e r t y u i o a s d f g h j k


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
exit /b