@echo off
cd %~dp0
echo %cd%
:::::::::::::::::::::::::::::::::::::::
set LocalTemp=_Temp.cms
(
echo.
echo // Запуск из командной строки
echo #name "New Script"
echo #autorun
echo.
echo FOR($a, $a ^<5^)
echo.
echo MOVER(25,0^)
echo WAITMS(50^)
echo MOVER(0,25^)
echo WAITMS(50^)
echo MOVER(-25,0^)
echo WAITMS(50^)
echo MOVER(0,-25^)
echo WAITMS(50^)
echo END_CYC
echo.
echo print("Hello, world!"^)
echo HALT(1^)
)>%LocalTemp%
echo ::::::::::::::::::::::::::::::
notepad %LocalTemp%
start Clickermann.exe %LocalTemp%
pause
DEL %LocalTemp%
TIMEOUT /T 5
exit /b