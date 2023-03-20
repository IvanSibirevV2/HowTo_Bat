::Рассматриваем возможность того что 
::Менюшка может быть сложнее чем просто папка с микробатниками
@echo off
Setlocal EnableDelayedExpansion

cd %~dp0
echo %~dp0
echo %cd%
::pause
::for /?
::for /d %%a in (*) do echo %%a
::for %%a in (%cd%/*.*) do echo %%a
::FOR /d %a DO int(*.*) (echo %a )
call :menu_03268
::echo "%date:~-4%.%date:~3,2%.%date:~0,2%_%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%_%username%%"
PAUSE
exit /b

:menu_03268
setlocal
	set _id=1
	:menu_03268_begin
	set _counter=-1
	cls
	:::::::::::::::::::::::::::::::::::::::::::::::
		set /a _counter= %_counter%+1
		if "%1" EQU "" ((if %_id% EQU %_counter% (<nul set /p strTemp=*))&(echo Exit)
		)else (if %_id% EQU %_counter% (TIMEOUT /T 2)&(Exit))
	:::::::::::::::::::::::::::::::::::::::::::::::
		set /a _counter= %_counter%+1
		if "%1" EQU "" ((if %_id% EQU %_counter% (<nul set /p strTemp=*))&(echo ..\)
		)else (if %_id% EQU %_counter% (cd ..\))
	
	:::::::::::::::::::::::::::::::::::::::::::::::
		::Перебираем папки
		for /d %%a in (*) do (
			set /a _counter= !_counter!+1
				if "%1" EQU "" ((if %_id% EQU !_counter! (<nul set /p strTemp=*))&(echo %%a)
				)else (if %_id% EQU !_counter! (
					cd %%a
					echo ___%%a
				))
		)
		:::::::::::::::::::::::::::::::::::::::::::::::
		::Перебираем Файлы
		for %%a in (%cd%\*.*) do (
			set /a _counter= !_counter!+1
				if "%1" EQU "" ((if %_id% EQU !_counter! (<nul set /p strTemp=*))&(echo %%a)
				)else (if %_id% EQU !_counter! (
					
					notepad %%a
					TIMEOUT /T 5
				))
		)
		:::::::::::::::::::::::::::::::::::::::::::::::::::
	:::::::::::::::::::::::::::::::::::::::::::::::
	if "%1" EQU "Do" (exit /b) else (choice /c ews)
	if %ErrorLevel% EQU 1 ((echo e)&(call :menu_03268_begin Do)&(set %ErrorLevel%=0))
	if %ErrorLevel% EQU 2 ((echo w)&(set /a _id= %_id%-1)&(set %ErrorLevel%=0))
	if %ErrorLevel% EQU 3 ((echo s)&(set /a _id= %_id%+1)&(set %ErrorLevel%=0))
	if %_id% LSS 0 set _id=%_counter%
	if %_id% GTR %_counter% set _id=0
	goto :menu_03268_begin
endlocal
exit /b