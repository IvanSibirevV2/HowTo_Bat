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
set FileName="_%date:.=,%_%time::=,%_%username%.bat"
set NL=^& echo.
(
echo @echo off %NL%^
echo HelloWorld %NL%^
echo Привет мир %NL%^
pause %NL%^
exit /b
)>> %FileName%
:::::::::::::::::::::::::::::::
CLIP < %FileName%
notepad %FileName%
del %FileName%
pause
exit /b