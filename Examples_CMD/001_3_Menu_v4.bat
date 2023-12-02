::Рассматриваем возможность того что 
::Менюшка может быть сложнее чем просто папка с микробатниками
:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
:::::::::::::::::::::::::::::::::::::::::::::
echo %cd%
::call :menu_03268
call :MenuEngine 4 :Mark1 :Mark2 :Mark3
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::

:MenuEngine
echo %*
setlocal
:MenuEngine_For_Begine
 SHIFT /2
 echo %1 %2 %3 %4 %5
 if "%2" EQU "" goto :MenuEngine_For_end
 ::...
goto :MenuEngine_For_Begine 
:MenuEngine_For_end
endlocal
echo %*
echo %1 %2 %3 %4 %5
 
exit /b


:Mark1
echo Mark1
exit /b
:Mark2
echo Mark2
exit /b
:Mark3
echo Mark3
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

:::::::::::::::::::::::::::::::::::::::::::::
:getVar
	If "%3" EQU "" (call :getVar %1 %2 %%%1%%) else set %2=%3
exit /b 0