:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
title %~0 
:::::::::::::::::::::::::::::::::::::::::::::
echo %qwe%
call :Test
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
:Test
set Title_Id=%date:~-4%%date:~3,2%%date:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%_%username%
title %Title_Id%
for /L %%i in (1,1,10) do (
 echo i = %%i
 nircmd win min title %Title_Id%
 nircmd wait 1000
 nircmd win max title %Title_Id%
 nircmd wait 1000
)
exit /b