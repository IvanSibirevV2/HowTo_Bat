:: Скрит   был написан для автоматического выставления оценок в элжер в столбик
@echo off
cd %~dp0
echo %cd%
:::::::::::::::::::::::::::::::::::::::
set LocalTemp=_ElzhurTK.cms
(
echo.
echo // Запуск из командной строки
echo #name "New Script"
echo #autorun
echo.
echo LCLICK(473,699^)
echo WAITMS(50^)
::2ИСИП-121_Сети Тест 1
::call :presMarks 5 5 0 0 0 5 0 5 0 0 0 5 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
::2ИСИП-121_Сети Тест 2
::call :presMarks 5 0 0 0 0 0 0 0 0 0 0 5 
::2ИСИП-121_Сети Тест 3
::call :presMarks 5 0 0 0 0 0 0 0 0 0 0 5 
::И так далее..
call :presMarks 5 0 5 0 0 5 5 5 5 0 0 5 0 5 5 5 5 0 5 0 0 0 5 0 0 0 0 5 5 5
 

echo.
echo print("Hello, world!"^)
echo HALT(1^)
)>%LocalTemp%
echo ::::::::::::::::::::::::::::::
::notepad %LocalTemp%
start Clickermann.exe %LocalTemp%
::pause
TIMEOUT /T 5
exit /b
:::::::::::::::::::::::::::::::::::::::
:presMarks
echo KEYDOWN(#BACKSPACE^)
echo WAITMS(50^)
echo KEYUP(#BACKSPACE^)
echo WAITMS(50^)
	if %1 EQU 2 (
		echo KEYDOWN(#2^)
		echo WAITMS(50^)
		echo KEYUP(#2^)
	)
	if %1 EQU 3 (
		echo KEYDOWN(#3^)
		echo WAITMS(50^)
		echo KEYUP(#3^)
	)
	if %1 EQU 4 (
		echo KEYDOWN(#4^)
		echo WAITMS(50^)
		echo KEYUP(#4^)
	)
	if %1 EQU 5 (
		echo KEYDOWN(#5^)
		echo WAITMS(50^)
		echo KEYUP(#5^)
	)
	echo WAITMS(50^)
	echo KEYDOWN(#DOWN^)
	echo WAITMS(50^)
	echo KEYUP(#DOWN^)
	echo WAITMS(50^)
	Shift
	if "%1"=="" goto endpresMarks
	goto presMarks
	:endpresMarks
exit /b