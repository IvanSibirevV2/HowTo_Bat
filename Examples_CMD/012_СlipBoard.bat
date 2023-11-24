:::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" start notepad++ %0 
cd %~dp0
:::::::::::::::::::::::::::::::::set FileName="_%date:.=,%_%time::=,%_%username%.bat"
echo %FileName%
(
	echo @echo off
	echo echo HelloWorld
	echo Привет мир
	echo pause
	echo exit /b
)>> %FileName%
:::::::::::::::::::::::::::::::
CLIP < %FileName%
notepad %FileName%
del %FileName%
pause
exit /b