rem https://admin-gu.ru/os/windows/netsh-nastrojka-seti-v-windows-iz-komandnoj-stroki-cmd
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
rem �㭪�� ���� ����뢠�� �.
:menu.Choice1
	set menu.counter=-1
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		::�뢮� �� �࠭ ᨬ���� * ��� ���室� �� ᫥������ ��ப�, �᫨ �㭪� ���� ��࠭
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		::�뢮� �������� �㭪� ����
		echo %menu.counter%. Exit
	)else (
		::�믮������ �㭪樮����, ����������� ��� �㭪� ����
		if %menu.id% EQU %menu.counter% Exit
	)
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. netsh interface ip show interface
	)else (if %menu.id% EQU %menu.counter% (
	netsh interface ip show interface
))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. netsh interface set interface name="���஢����� ���" admin=DISABLED
	)else (if %menu.id% EQU %menu.counter% (
	
	netsh interface set interface name="���஢����� ���" admin=DISABLED
))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a menu.counter= %menu.counter%+1
	if "%1" EQU "" (
		if %menu.id% EQU %menu.counter% (<nul set /p strTemp=*)
		echo %menu.counter%. netsh interface set interface name="���஢����� ���" admin=ENABLED
	)else (if %menu.id% EQU %menu.counter% (
	netsh interface set interface name="���஢����� ���" admin=ENABLED
))
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
exit /b 0