:::::::::::::::::::::::::::::::::::::
rem Создание виртуальной переменной
rem Под виртуальной переменной подразумеваем переменную
rem , которой нет в программных кодах
:defVar
	set %1=%2
exit /b 0
rem  извлечение значения виртуальной переменной
:getVar
	call :getVarVar %%%1%% %2
exit /b 0
rem Разименовывание виртуальной переменной
:getVarVar
	set %2=%1
exit /b 0
:Test_VirtualVar
	@echo off
	call :defVar A www
	if defined A (echo %A%)
	call :getVar A B
	echo B=%B%
	TIMEOUT /T 10
	pause
	CLS
exit /b 0