Rem V0.0.2
@echo off
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
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (echo * 0. Exit)
		if %menu.id% NEQ %menu.counter% (echo 0. Exit)
	)else (if %menu.id% EQU %menu.counter% Exit)
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (echo * 0. Menu_1)
		if %menu.id% NEQ %menu.counter% (echo 0. Menu_1)
	)else (if %menu.id% EQU %menu.counter% echo Menu_1)
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (echo * 0. Menu_2)
		if %menu.id% NEQ %menu.counter% (echo 0. Menu_2)
	)else (if %menu.id% EQU 2 echo Menu_2)
exit /b 0