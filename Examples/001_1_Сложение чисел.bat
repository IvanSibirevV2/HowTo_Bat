@echo off
cd %~dp0
Set /P Input=  Введите пароль для продолжения ^>
echo "Input=%Input%"
set per1= 4
echo "per1=%per1%"
set per2= 3
echo "per2=%per2%"
set /a rez= %per1%+%per2%
echo "rez=%rez%"
pause