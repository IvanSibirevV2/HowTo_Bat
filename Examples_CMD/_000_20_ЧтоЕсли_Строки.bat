:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp1" ((start notepad++ %1)&&(exit))
cd %~dp1
title %~1
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
goto StrCountEnd
:StrCount
set VarText1=%1
set %2=0

:sfklhgkjsdkjdsh
if defined VarText1 (
 set VarText1=!VarText1:~1!
 echo !VarText1!
 set /a %2=!%2!+1
echo !%2!
PAUSE
goto :sfklhgkjsdkjdsh
)
::if defined FileWrite (echo "FileWrite - defined")
::if not defined FileWrite (echo "FileWrite - not defined")
exit /b
:::TestStrCount
::set VarText1=Text
::call :StrCount %VarText1% C
::echo %C%
::exit /b
:StrCountEnd
::call TestStrCount
::set VarText1=Text
::set C=0
::call :StrCount %VarText1% C
::echo %C%
::echo %VarText1%
pause
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
