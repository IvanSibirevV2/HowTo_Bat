:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::
goto StrCountEnd
	:StrCount
		set VarText1=%1
		set %2=0
		:sfklhgkjsdkjdsh
		if defined VarText1 (
			set VarText1=!VarText1:~1!
			set /a %2=!%2!+1
			goto :sfklhgkjsdkjdsh
		)
	exit /b
	:TestStrCount
		set VarText1=Text
		echo %VarText1%
		call :StrCount %VarText1% C
		echo %C%
		pause
	exit /b
:StrCountEnd
call :TestStrCount
:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::
::https://celitel.info/klad/nhelp/helpbat.php?dcmd=ex_string
set VarText=СтрокаБезПробела
echo %VarText%
set VarText="Строка c пробелом"
echo %VarText%
set "VarText=Строка c пробелом без кавычек"
echo %VarText%
set "VarText=1234567890"
echo %VarText%
echo %VarText:~-3% - выдрать последних 3 символа
set "VarText=1234567890"
echo %VarText:~0,3% - выдрать 3 символа с нулевого символа
echo %VarText:~2,3% - выдрать 3 символа со второго символа
echo %VarText:~1,-1% - выдрать 3 символа со второго символа
set "VarText=Удаление подстроки в строке"
echo %VarText:подстроки =% - %VarText%
set "VarText=Удаление пробелов в строке"
echo %VarText: =%
echo %VarText: =_% - замена всех пробелов на подчеркивания

set "VarText1=Объединение"
set "VarText2=строк"
echo %VarText1% %VarText2%
echo %VarText1%%VarText2%
::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::
TIMEOUT /T 1
pause
exit /b
::::::::::::::::::::::::::::::::::::::::::::::
