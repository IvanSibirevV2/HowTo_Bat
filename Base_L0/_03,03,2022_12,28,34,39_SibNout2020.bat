@echo off
pause
exit /b
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
����� �뢮�� ������ �� ��࠭ (ECHO) �⪫�祭.
@echo off
	if "%1"=="" (call :Stack.Main)
	if %1 EQU ":Main" (call :Stack.Main)
	if %1 EQU ":Stack.push" (call :Stack.push %2 %3)
	if %1 EQU ":Stack.popw" (call :Stack.popw %2 %3)
	if %1 EQU ":Stack.pop" (call :Stack.pop %2 %3)
	if %1 EQU ":Stack.Test" (call :Stack.Test)
	::%2 - подхватываемый из вне возвращаемый в наружу параметр
	::if %1 EQU ":Pi" (call :Pi %2)
exit /b
:Stack.Main
	echo Stack.bat
	echo BLL-Bat Lite Library
	echo ""	
	echo :Stack.push
	echo :Stack.popw
	echo :Stack.pop
	echo :Stack.Test
	echo ""	
	set qwde=echo !_!_!
	%qwde%
	pause
exit /b
:::::::::::::::::::::::::::::::::::::::::::::::
rem Взасовывание в стек значения
rem %1 Название переменной стека; rem %2 Засовываемое значение
:Stack.push
	if not defined %1.Count (set %1.count=0)
	call :getVar %1.Count _Count
	set /a %1.count= %_Count%+1
	call :getVar %1.Count B
	::echo %B%
	::echo %1%B%
	call :defVar %1%B% %2
	call :getVar %1%B% C
	::echo %1%B%= %C%
exit /b 0
rem Изымание с вершины стека значения без удаления его
rem %1 Название переменной стека; rem %2 Возвращаемое значение
:Stack.popw
	call :getVar %1.Count B
	call :getVar %1%B% %2
exit /b 0
rem Взасовывание в стек значения
rem %1 Название переменной стека; %2 Возвращаемое значение
:Stack.pop
	call :getVar %1.Count B
	call :getVar %1%B% %2
	set %1%B%=
	call :getVar %1.Count _Count
	set /a %1.count= %_Count%-1
exit /b 0
rem модуль стека дописан осталось протестировать
:Stack.Test
	call :Stack.push A QWE
	echo A.Count=%A.Count%
	echo A1=%A1%
exit /b 0
����� �뢮�� ������ �� ��࠭ (ECHO) �⪫�祭.
