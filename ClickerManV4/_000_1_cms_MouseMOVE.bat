::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
call :Config
call :MouseMOVE 10 10
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Config
 set Path_ClickerMann=ClickerManV4.12/Clickermann.exe
 set NL=^& echo.
exit /b
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:MouseMOVE
set LocalTemp=_TempMouseMOVE.cms
(echo // Запуск из командной строки%NL%^
#name "New Script"%NL%^
#autorun%NL%^
MOVE(%1,%2^) %NL%^
HALT(1^)
)>%LocalTemp%
echo ::::::::::::::::::::::::::::::
::notepad %LocalTemp%
start %Path_ClickerMann% %LocalTemp%
::DEL %LocalTemp%
exit /b