:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
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