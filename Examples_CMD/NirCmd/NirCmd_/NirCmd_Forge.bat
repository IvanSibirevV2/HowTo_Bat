Rem V0.0.2
@echo off
if "%cd%" EQU "C:\Program Files\Notepad++" (
	cd C:\D\Git_Hub\HowTo_Bat\NirCmd\NirCmd_
)
echo %cd%
::UINC
set UINC.FileName=Temp_UINC.bat
call :UINC.run

PAUSE
CLS
EXIT
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
REM UINC - User Interfase NirCmd
rem s - doun
:UINC.Choice2
	set /a UINC.id= %UINC.id%-1
exit /b 0
rem e - DO
:UINC.Choice3
	set /a UINC.id= %UINC.id%+1
exit /b 0
rem Show UINC
:UINC.run
	set UINC.id=1
	:UINC.run.m_cajhgushfkjdagskjsagj
		echo ##################################
		call :UINC.Choice1
		echo ##################################
		choice /c ews
		call :UINC.Choice%ErrorLevel% do
	goto :UINC.run.m_cajhgushfkjdagskjsagj
exit /b 0
rem w - upp
rem Пункты меню вписывать сюда.
:UINC.Choice1
	set UINC.counter=-1
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a UINC.counter= %UINC.counter%+1
	if "%1" EQU "" (
		if %UINC.id% EQU %UINC.counter% (echo * 0. Exit)
		if %UINC.id% NEQ %UINC.counter% (echo 0. Exit)
	)else (if %UINC.id% EQU %UINC.counter% Exit)
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	::sendkey [Key] [press | down | up]
	set /a UINC.counter= %UINC.counter%+1
	if "%1" EQU "" (
		if %UINC.id% EQU %UINC.counter% (echo * 0. UINC_1)
		if %UINC.id% NEQ %UINC.counter% (echo 0. UINC_1)
	)else (if %UINC.id% EQU %UINC.counter% echo UINC_1)
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a UINC.counter= %UINC.counter%+1
	if "%1" EQU "" (
		if %UINC.id% EQU %UINC.counter% (echo * 0. UINC_2)
		if %UINC.id% NEQ %UINC.counter% (echo 0. UINC_2)
	)else (if %UINC.id% EQU 2 echo UINC_2)
exit /b 0
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::