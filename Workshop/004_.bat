::http://tehnopost.info/computer/26-taymer-dlya-vyklyucheniya-kompyutera-windows-7.html
::https://tiflohelp.ru/articles/sozdat-tihij-installyator.html
::Экспериментируйте, интерестно что получится
@echo off
cd %~dp0
call :menu.run

PAUSE
EXIT

:menu.Choice2
	set /a menu.id= %menu.id%-1
exit /b 0
:menu.Choice3
	set /a menu.id= %menu.id%+1
exit /b 0
rem e - DO =  ;%ErrorLevel%==1
rem w - upp ;%ErrorLevel%==2
rem s - doun ;%ErrorLevel%==3
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
rem Пункты меню вписывать сюда.
:menu.Choice1
	set menu.counter=-1
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		::Вывод на экран символа * без перехода на следующую строку, если пункт меню выбран
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		::Вывод названия пункта меню
		echo %menu.counter%. Exit
	)else (
		::Выполнение функционала, заложенного под пункт меню
		if %menu.id% EQU %menu.counter% Exit
	)
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. "https://firefox.mail.ru/"
	)else (if %menu.id% EQU %menu.counter% (
	start https://firefox.mail.ru/
	start https://www.opera.com/ru
))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. "firefox_ru.exe -"HortInstall
	)else (if %menu.id% EQU %menu.counter% (
	firefox_ru.exe
))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. "start /wait firefox_ru.exe /s "-CoolInstall
	)else (
		if %menu.id% EQU %menu.counter% (
			start /wait firefox_ru.exe /s
			echo firefox_ru - ok
		)
	)
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	::https://dudom.ru/kompjutery/wmic-product-get-name/
	::rem wmic product where name="Mozilla" call uninstall /nointeractive
	:: Работает только с тем что было установлено через Microsoft Instaler
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. "C:\Program Files (x86)\Mozilla Firefox\uninstall\helper.exe"  -ms
	)else (
		if %menu.id% EQU %menu.counter% (
			"C:\Program Files (x86)\Mozilla Firefox\uninstall\helper.exe" -ms
		)
	)
	::if %menu.id% EQU %menu.counter% 
		::(
	rem Firefox
	rem start /wait firefox_ru.exe /s
	rem wmic product get name,version
			::(wmic product list) > temp_Product_list.txt
			::notpad temp_Product_list.txt
			::wmic product list /?
			
			::cmd
		::)
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
::	set /a menu.counter= %menu.counter%+1
::	if "%1" EQU "" (
::		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
::		echo %menu.counter%. "OperaSetup.exe -"HortInstall
::	)else (if %menu.id% EQU %menu.counter% (
::	OperaSetup.exe
::))
:::::::::::::::::::::::::::::::::::::::::::::::::::
::wmic product where name="Имя программы" call uninstall /nointeractive
exit /b 0