::Рассматриваем возможность того что 
::Менюшка может быть сложнее чем просто папка с микробатниками
:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
::::::::::::::::::::::::::::::::::::::::::::
::Обьявление начала меню
set /a m205019082024=2
:begin_205019082024
cls
echo ErrorLevel=%ErrorLevel%
::Отрисовка пунктов меню
(if %m205019082024% EQU 0 (<nul set /p strTemp=*))&(echo Выход)
(if %m205019082024% EQU 1 (<nul set /p strTemp=*))&(echo Да)
(if %m205019082024% EQU 2 (<nul set /p strTemp=*))&(echo Нет)
(if %m205019082024% EQU 3 (<nul set /p strTemp=*))&(echo Сомневаюсь)
::Управляющие структуры
set /a m205019082024m=3
choice /c wse
if %ErrorLevel% EQU 1 echo 1 w
if %ErrorLevel% EQU 1 (set /a m205019082024=%m205019082024%-1)
if %ErrorLevel% EQU 1 if %m205019082024% LSS 0 set /a m205019082024=%m205019082024m%
if %ErrorLevel% EQU 1 goto :begin_205019082024
if %ErrorLevel% EQU 2 echo 2 s
if %ErrorLevel% EQU 2 (set /a m205019082024=%m205019082024%+1)
if %ErrorLevel% EQU 2 if %m205019082024% GTR %m205019082024m% set /a m205019082024=0
if %ErrorLevel% EQU 2 goto :begin_205019082024
::Вшитый функционал
if %ErrorLevel% EQU 3 if %m205019082024% EQU 0 echo Выход
if %ErrorLevel% EQU 3 if %m205019082024% EQU 1 echo Да
if %ErrorLevel% EQU 3 if %m205019082024% EQU 1 goto :begin_205019082024
if %ErrorLevel% EQU 3 if %m205019082024% EQU 2 echo Нет
if %ErrorLevel% EQU 3 if %m205019082024% EQU 2 goto :begin_205019082024
if %ErrorLevel% EQU 3 if %m205019082024% EQU 3 echo Сомневаюсь
if %ErrorLevel% EQU 3 if %m205019082024% EQU 3 goto :begin_205019082024
::Самостоятельный выход из меню
if %ErrorLevel% EQU 3 echo 3 e
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::