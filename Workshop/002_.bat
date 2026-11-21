::Стрелочное меню своими руками
::В чем проблема...
::Пользователь может поменять картинку
::Но через батник можно только 
::- поменять через реестр картинку можно, но требуется перезагрузка. Стабильно работает только на семерке
::- Также при установке файла как картинки рабочего стола в системе появляется ещё один такой же файла
::Его можно найти поиском. Обратите внимание, рядом лежит бинарно программная версия этого файла
::Именно из бинарно программной версии файла винда дорисовывает все недостающее
::Вот вам 2 работающих относительно простых способа
::- Есть ещё один способ. Пишется приложение с++ которое делает это программно. Приложение можно программно загрузить.
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
		echo %menu.counter%. reg add /?
	)else (if %menu.id% EQU %menu.counter% (reg add /?))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. %~dp0Xru.jpeg"
	)else (if %menu.id% EQU %menu.counter% (
		REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /d "%~dp0Xru.jpeg" /f
		RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters
		rundll32.exe user32.dll,UpdatePerUserSystemParameters ,1 ,True
		rundll32.exe user32.dll,UpdatePerUserSystemParameters ,2 ,True
	))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. %~dp0Trava.jpeg"
	)else (if %menu.id% EQU %menu.counter% (
		REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /d "%~dp0Trava.jpeg" /f
		RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters
		rundll32.exe user32.dll,UpdatePerUserSystemParameters ,1 ,True
		rundll32.exe user32.dll,UpdatePerUserSystemParameters ,2 ,True
	))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. %~dp0Imperator.jpeg"
	)else (if %menu.id% EQU %menu.counter% (
		REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /d "%~dp0Imperator.jpeg" /f
		RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters
		rundll32.exe user32.dll,UpdatePerUserSystemParameters ,1 ,True
		rundll32.exe user32.dll,UpdatePerUserSystemParameters ,2 ,True
	))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::

exit /b 0