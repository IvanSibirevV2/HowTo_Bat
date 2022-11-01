::Рассматриваем возможность того что 
::Менюшка может быть сложнее чем просто папка с микробатниками
@echo off
cd %~dp0
echo %cd%
call :menu_03268
PAUSE
exit /b

:menu_03268
setlocal
set flag=true
echo flag=%flag%
	set _id=0
	set _counter=-1
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a _counter= %_counter%+1
	if "%1" EQU "" (if %_id% EQU %_counter% (<nul set /p strTemp=*)echo %_counter%. Exit
	)else (if %_id% EQU %_counter% (Exit))
	:::::::::::::::::::::::::::::::::::::::::::::::::::
	set /a _counter= %_counter%+1
	if "%1" EQU "" (if %_id% EQU %_counter% (<nul set /p strTemp=*)echo %_counter%. Menu_1
	)else (if %_id% EQU %_counter% echo Menu_1)
	:::::::::::::::::::::::::::::::::::::::::::::::::::	
	
	
	
	

echo flag=%flag%

	
	
	
	::##################################
		
		

		set /a menu_03268.counter= %menu_03268.counter%+1
		if "%1" EQU "" (
			if %menu_03268.id% EQU %menu_03268.counter% (<nul set /p strTemp=*)
			echo %menu_03268.counter%. Menu_2
		)else (if %menu_03268.id% EQU 2 echo Menu_2)
		:::::::::::::::::::::::::::::::::::::::::::::::::::
	::##################################
	choice /c ews
	if %ErrorLevel% EQU 1 (call menu_03268 Do)
	if %ErrorLevel% EQU 2 ((set /a menu_03268.id= %menu_03268.id%-1)&(set %ErrorLevel%=0))
	if %ErrorLevel% EQU 3 ((set /a menu_03268.id= %menu_03268.id%+1)&(set %ErrorLevel%=0))
	if defined :menu_03268.IsDestruction goto :menu_03268.destruction
goto :menu_03268	
endlocal
exit /b