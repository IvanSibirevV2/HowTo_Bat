::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
call :script1
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(exit /b)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:script1
call :Config
call :MouseTest
::call :MouseMOVE 500 10
call :MouseLCLICK 500 10
::call :MouseMOVE 50 50
::call :MouseLCLICK

::call :KEYPRESS #A
call :HaltAndStart
exit /b
:script2
::START https://kip.eljur.ru/authorize
call :Config
::call :MouseTest
::call :MouseMOVE 10 10
::call :MouseLCLICK
::call :KEYPRESS #A
call :HaltAndStart
exit /b
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Config
 set Path_ClickerMann=ClickerManV4.12/Clickermann.exe
 set NL=^& echo.
 set LocalTemp=_Temp.cms
(echo // Запуск из командной строки%NL%^
#name "New Script"%NL%^
#autorun %NL%
)>%LocalTemp%
TIMEOUT /T 1
exit /b
:MouseTest
(echo // %NL%^
FOR($a, $a ^<5^)%NL%^
MOVER(25,0^)%NL%^
WAITMS(50^)%NL%^
MOVER(0,25^)%NL%^
WAITMS(50^)%NL%^
MOVER(-25,0^)%NL%^
WAITMS(50^)%NL%^
MOVER(0,-25^)%NL%^
WAITMS(50^)%NL%^
END_CYC%NL%^
)>>%LocalTemp%
echo ::::::::::::::::::::::::::::::
exit /b
:MouseMOVE
(echo MOVE(%1,%2^) %NL%^)>>%LocalTemp%
exit /b
:MouseLCLICK
(echo LCLICK(%1,%2^) %NL%WAITMS(50^)%NL%^)>>%LocalTemp%
exit /b
:MouseRCLICK
(echo RCLICK(%1,%2^) %NL%WAITMS(50^)%NL%^)>>%LocalTemp%
exit /b
:KEYDOWN
(echo KEYDOWN(%1^) %NL%^)>>%LocalTemp%
exit /b
:KEYUP 
(echo KEYUP(%1^) %NL%^)>>%LocalTemp%
exit /b
:WAITMS
(echo WAITMS(50^) %NL%^)>>%LocalTemp%
exit /b
:KEYPRESS
call :KEYDOWN %1
call :WAITMS
call :KEYUP %1
call :WAITMS
exit /b
:HaltAndStart
(echo HALT(1^)%NL%)>>%LocalTemp%
TIMEOUT /T 1
 start %Path_ClickerMann% %LocalTemp%
notepad %LocalTemp%
 
exit /b
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::левый клик
::правый клик
::ожидание
::стрелки  в лево в право в верх в низ
::нажатие клавиши 
::комбинация клавишь
::переменные клавишь