Rem V0.0.3
@echo off
if "%cd%" EQU "C:\Program Files\Notepad++" (
	cd C:\D\Git_Hub\HowTo_Bat\CMD_BAT_Adapter_Forge\V0.0.3
)
echo %cd%
call :UI0.run

PAUSE
CLS
EXIT

rem s - doun
:UI0.Choice2
	set /a UI0.id= %UI0.id%-1
exit /b 0
rem e - DO
:UI0.Choice3
	set /a UI0.id= %UI0.id%+1
exit /b 0
rem Show UI0
:UI0.run
	set UI0.id=1
	:UI0.run.m_cajhgushfkjdagskjsagj
		echo ##################################
		call :UI0.Choice1
		echo ##################################
		choice /c ews
		call :UI0.Choice%ErrorLevel% do
	goto :UI0.run.m_cajhgushfkjdagskjsagj
exit /b 0
rem w - upp
rem Пункты меню вписывать сюда.
:UI0.Choice1
	set UI0.counter=-1
	:::::::::::::::::::::::::::::::::::::::::::::::::::
::	set /a UI0.counter= %UI0.counter%+1
::	if "%1" EQU "" (
::		if %UI0.id% EQU %UI0.counter% (echo * 0. Exit)
::		if %UI0.id% NEQ %UI0.counter% (echo 0. Exit)
::	)else (if %UI0.id% EQU %UI0.counter% Exit)
call UI0_1.bat %1
call UI0_2.bat %1
call UI0_3.bat %1
exit /b 0