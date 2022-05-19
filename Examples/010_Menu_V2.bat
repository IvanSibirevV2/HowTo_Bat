::Рассматриваем возможность того что 
::Менюшка может быть сложнее чем просто папка с микробатниками
@echo off
cd %~dp0
call :menu_03268
PAUSE
exit /b
:: При создании меню обретите внимание. Функции меню дайте уникальное имя
:: Скопируйте это уникальное имя в название каждой последующей переменной
:: Особенности реализации
:: 1) Стрелочное меню
:: 2) Минималистичная реализация в 2 функции
:: 3) Уникальные переменные позволяют создать больше одного экземпляра меню
:: 4) При правильной организации есть очистка счетчика и идентификатора меню
rem e - DO =  ;%ErrorLevel%==1
rem w - upp ;%ErrorLevel%==2
rem s - doun ;%ErrorLevel%==3
rem Show Menu
:menu_03268
	if not defined menu_03268.id set menu_03268.id=1
	::##################################
	call :menu_03268.Choice
	::##################################
	choice /c ews
	if %ErrorLevel% EQU 1 (call :menu_03268.Choice Do)
	if %ErrorLevel% EQU 2 (
		set /a menu_03268.id= %menu_03268.id%-1
		set %ErrorLevel%=0
	)
	if %ErrorLevel% EQU 3 (
		set /a menu_03268.id= %menu_03268.id%+1
		set %ErrorLevel%=0
	)
	if defined :menu_03268.IsDestruction goto :menu_03268.destruction
	goto :menu_03268
	:menu_03268.destruction
	set menu_03268.id=
	set menu_03268.counter=
	set :menu_03268.IsDestruction=
exit /b
::::::::::::::::::::::::::::::::::::::::::::::::::
rem Пункты меню вписывать сюда.
:menu_03268.Choice
	set menu_03268.counter=-1
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu_03268.counter= %menu_03268.counter%+1
	if "%1" EQU "" (
		::Вывод на экран символа * без перехода на следующую строку, если пункт меню выбран
		if %menu_03268.id% EQU %menu_03268.counter% (<nul set /p strTemp=*)
		::Вывод названия пункта меню
		echo %menu_03268.counter%. Exit
	)else (
	::Выполнение функционала, заложенного под пункт меню
		if %menu_03268.id% EQU %menu_03268.counter% (
			::Легальный выход из меню
			set :menu_03268.IsDestruction = Ok
			call :menu_03268.destruction
			pause
			::Агрессивный выход вообще из командной строки
			Exit
		)
	)
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu_03268.counter= %menu_03268.counter%+1
	if "%1" EQU "" (
		if %menu_03268.id% EQU %menu_03268.counter% (<nul set /p strTemp=*)
		echo %menu_03268.counter%. Menu_1
	)else (if %menu_03268.id% EQU %menu_03268.counter% echo Menu_1)
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu_03268.counter= %menu_03268.counter%+1
	if "%1" EQU "" (
		if %menu_03268.id% EQU %menu_03268.counter% (<nul set /p strTemp=*)
		echo %menu_03268.counter%. Menu_2
	)else (if %menu_03268.id% EQU 2 echo Menu_2)
	:::::::::::::::::::::::::::::::::::::::::::::::::::
exit /b 0