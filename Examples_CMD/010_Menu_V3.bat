::Рассматриваем возможность того что 
::Менюшка может быть сложнее чем просто папка с микробатниками
:::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" start notepad++ %0 
cd %~dp0
:::::::::::::::::::::::::::::::::
echo %cd%
call :menu_03268
PAUSE
exit /b

:menu_03268
setlocal
	set _id=0
	:menu_03268_begin
	set _counter=-1
	cls
	:::::::::::::::::::::::::::::::::::::::::::::::
		set /a _counter= %_counter%+1
		if "%1" EQU "" ((if %_id% EQU %_counter% (<nul set /p strTemp=*))&(echo %_counter%. Exit)
		)else (if %_id% EQU %_counter% (TIMEOUT /T 2)&(Exit))
		:::::::::::::::::::::::::::::::::::::::::::::::
		set /a _counter= %_counter%+1
		if "%1" EQU "" ((if %_id% EQU %_counter% (<nul set /p strTemp=*))&(echo %_counter%. Menu_1)
		)else (if %_id% EQU %_counter% (echo Menu_1)&(pause))
		:::::::::::::::::::::::::::::::::::::::::::::::
		set /a _counter= %_counter%+1
		if "%1" EQU "" ((if %_id% EQU %_counter% (<nul set /p strTemp=*))&(echo %_counter%. Menu_2)
		)else (if %_id% EQU %_counter% (echo Menu_2)&(pause))
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