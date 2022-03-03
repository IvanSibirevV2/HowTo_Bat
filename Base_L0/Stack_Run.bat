@echo off
if "%cd%" EQU "C:\Program Files\Notepad++" (
	cd C:\D\Git_Hub\HowTo_Bat\Base_L0
)
echo %cd%
:::::::::::::::::::::::::::::::::
set FileName="_%date:.=,%_%time::=,%_%username%.bat"
echo %FileName%
set spase_=
::Посылаем в лоб программный код на дозапись в файл
(
	echo @echo off
	echo call :Stack.Test
	echo pause
	echo exit /b
	type VirtualVar.bat
	echo %spase_%
	type Stack.bat
	echo %spase_%
)>> %FileName%
notepad %FileName%
%FileName%
pause
exit /b