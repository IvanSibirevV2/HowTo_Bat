:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
set FileName="_%date:.=,%_%time::=,%_%username%.bat"
set NL=^& echo.
(
echo @echo off %NL%^
echo HelloWorld %NL%^
echo �ਢ�� ��� %NL%^
pause %NL%^
exit /b
)>> %FileName%
:::::::::::::::::::::::::::::::
CLIP < %FileName%
notepad %FileName%
del %FileName%
pause
exit /b