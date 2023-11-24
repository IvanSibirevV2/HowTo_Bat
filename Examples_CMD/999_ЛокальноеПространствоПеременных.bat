::---------------------------------------------------------
::Этот примр демонстрирует работу 
::SetLocal
::EndLocal
::Используется для объявления локального пространства переменных
::---------------------------------------------------------
:::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" start notepad++ %0 
cd %~dp0
:::::::::::::::::::::::::::::::::
set per1=AAA
echo %per1%
::call "EchoColor.BAT" 97 "Привет цветной мир"
SetLocal
	echo %%per1%%
	
	set per1=BBB
	echo %per1%
	SetLocal
		set per1=CCC
		echo %per1%
	endlocal
	echo %per1%
endlocal
echo %per1%
TIMEOUT /T 2
pause