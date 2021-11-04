rem Инициализация стека
rem %1 - название виртуальной переменной стека
:Stack.Init
	if not defined %1.Count (set %1.count=0)
exit /b 0
rem Взасовывание в стек значения
rem %1 Название переменной стека
rem %2 Засовываемое значение
:push
	if not defined %1.Count (set %1.count=0)
	call :getVar %1.Count _Count
	set /a %1.count= %_Count%+1
	call :getVar %1.Count B
	echo %B%
	echo %1%B%
	call :defVar %1%B% %2
	call :getVar %1%B% C
	echo %1%B%= %C%
exit /b 0
rem Изымание с вершины стека значения 
rem без удаления его
rem %1 Название переменной стека
rem %2 Возвращаемое значение
:popw
	call :getVar %1.Count B
	call :getVar %1%B% %2
exit /b 0
rem 
rem Взасовывание в стек значения
rem %1 Название переменной стека
rem %2 Возвращаемое значение
:pop
	call :getVar %1.Count B
	call :getVar %1%B% %2
	set %1%B%=
	call :getVar %1.Count _Count
	set /a %1.count= %_Count%-1
exit /b 0
rem модуль стека дописан осталось протестировать
:Stack_Test
	::echo Stack_Test
	::call :Stack.Init
	call :push A QWE
	::set stack. 
	::if not defined FileWrite (echo "FileWrite - not defined")
exit /b 0