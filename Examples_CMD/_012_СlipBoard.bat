:::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" start notepad++ %0 
cd %~dp0
:::::::::::::::::::::::::::::::::
set FileName="_%date:.=,%_%time::=,%_%username%.bat"
echo %FileName%
set NL=^& echo.
echo ���������� %NL%^
�ਢ�� %NL%^
���
(
	echo @echo off
	echo echo HelloWorld
	echo �ਢ�� ���
	echo pause
	echo exit /b
)>> %FileName%
:::::::::::::::::::::::::::::::
CLIP < %FileName%
start notepad++ %FileName%
::del %FileName%
::pause
exit /b