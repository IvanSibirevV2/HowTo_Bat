:::::::::::::::::::::::::::::::::::::
rem Библиотека виртуальной переменной.
rem VirtualVar.bat
@echo off
	if "%1"=="" (call :VirtualVar.Main)
	if %1 EQU ":Main" (call :VirtualVar.Main)
	if %1 EQU ":defVar" (call :defVar %2 %3)
	if %1 EQU ":getVar" (call :getVar %2 %3)
	if %1 EQU ":getVarVar" (call :getVarVar %2 %3)
	if %1 EQU ":Test" (call :VirtualVar.Test)
exit /b
:VirtualVar.Main
	echo VirtualVar.bat
	echo BLL-Bat Lite Library
	echo ""
	echo :VirtualVar.Main
	echo :VirtualVar.defVar
	echo :defVar
	echo :VirtualVar.getVar
	echo :getVar
	echo :VirtualVar.getVarVar
	echo :getVarVar
	echo :VirtualVar.Test
	PAUSE
exit /b
:::::::::::::::::::::::::::::::::::::
rem Создание виртуальной переменной
rem Под виртуальной переменной подразумеваем переменную
rem , которой нет в программных кодах
:VirtualVar.defVar
:defVar
	set %1=%2
exit /b 0
rem  извлечение значения виртуальной переменной
:VirtualVar.getVar
:getVar
	call :getVarVar %%%1%% %2
exit /b 0
rem Разименовывание виртуальной переменной
:VirtualVar.getVarVar
:getVarVar
	set %2=%1
exit /b 0
:VirtualVar.Test
	@echo off
	call :defVar A www
	if defined A (echo %A%)
	call :getVar A B
	echo B=%B%
	TIMEOUT /T 10
	pause
	CLS
exit /b 0
