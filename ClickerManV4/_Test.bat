::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
call :Config
call :MouseTest
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Config
 set Path_ClickerMann=ClickerManV4.12/Clickermann.exe
 set NL=^& echo.
exit /b
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:MouseTest
set LocalTemp=_Temp.cms
(echo // %NL%^
// Запуск из командной строки%NL%^
#name "New Script"%NL%^
#autorun%NL%^
// %NL%^
FOR($a, $a ^<5^)%NL%^
// %NL%^
MOVER(25,0^)%NL%^
WAITMS(50^)%NL%^
MOVER(0,25^)%NL%^
WAITMS(50^)%NL%^
MOVER(-25,0^)%NL%^
WAITMS(50^)%NL%^
MOVER(0,-25^)%NL%^
WAITMS(50^)%NL%^
END_CYC%NL%^
// %NL%^
print("Hello, world!"^)%NL%^
HALT(1^)
)>%LocalTemp%
echo ::::::::::::::::::::::::::::::
::notepad %LocalTemp%
start %Path_ClickerMann% %LocalTemp%
::DEL %LocalTemp%
exit /b