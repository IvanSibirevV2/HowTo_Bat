Rem V0.0.3
@echo off
if "%cd%" EQU "C:\Program Files\Notepad++" (
	cd C:\D\Git_Hub\HowTo_Bat\CMD_BAT_Adapter_Forge\V0.0.3
)
echo %cd%
call :menu.run

PAUSE
CLS
EXIT

rem s - doun
:menu.Choice2
	set /a menu.id= %menu.id%-1
exit /b 0
rem e - DO
:menu.Choice3
	set /a menu.id= %menu.id%+1
exit /b 0
rem Show Menu
:menu.run
	set menu.id=1
	:menu.run.m_cajhgushfkjdagskjsagj
		echo ##################################
		call :menu.Choice1
		echo ##################################
		choice /c ews
		call :menu.Choice%ErrorLevel% do
	goto :menu.run.m_cajhgushfkjdagskjsagj
exit /b 0
rem w - upp
rem Пункты меню вписывать сюда.
:menu.Choice1
	set menu.counter=-1
	:::::::::::::::::::::::::::::::::::::::::::::::::::
::	set /a menu.counter= %menu.counter%+1
::	if "%1" EQU "" (
::		if %menu.id% EQU %menu.counter% (echo * 0. Exit)
::		if %menu.id% NEQ %menu.counter% (echo 0. Exit)
::	)else (if %menu.id% EQU %menu.counter% Exit)
call M_1.bat %1
call M_2.bat %1
call M_3.bat %1
exit /b 0