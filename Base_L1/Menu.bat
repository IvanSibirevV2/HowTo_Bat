@echo off
call :menu.init
:m_hgbdfksgsd
	echo ##################################
	call :menu.Choice1
	echo ##################################
	choice /c ews
	call :menu.Choice%ErrorLevel% do
goto :m_hgbdfksgsd

PAUSE
CLS
EXIT

:menu.init
	set menu.id=1
exit /b 0
rem w - upp
:menu.Choice1
	rem 0.
	if "%1" EQU "" (
		if %menu.id% EQU 0 (echo * 0. Exit)
		if %menu.id% NEQ 0 (echo 0. Exit)
	)else (if %menu.id% EQU 0 Exit)
	rem 1.
	if "%1" EQU "" (
		if %menu.id% EQU 1 (echo * 0. Menu_1)
		if %menu.id% NEQ 1 (echo 0. Menu_1)
	)else (if %menu.id% EQU 1 echo Menu_1)
	rem 2.
	if "%1" EQU "" (
		if %menu.id% EQU 2 (echo * 0. Menu_2)
		if %menu.id% NEQ 2 (echo 0. Menu_2)
	)else (if %menu.id% EQU 2 echo Menu_2)
exit /b 0
rem s - doun
:menu.Choice2
	set /a menu.id= %menu.id%-1
exit /b 0
rem e - DO
:menu.Choice3
	set /a menu.id= %menu.id%+1
exit /b 0