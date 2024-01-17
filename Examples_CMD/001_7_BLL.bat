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
::Как линковать функции в ***_run.bat
set FileName="_%date:.=,%_%time::=,%_%username%.bat"
set NL=^& echo.
::Посылаем в лоб программный код на дозапись в файл
(
echo @echo off %NL%^
echo HelloWorld %NL%^
pause %NL%^
exit /b
type %~nx0
)>> %FileName%
notepad %FileName%
call %FileName%
pause
exit /b