:::::::::::::::::::::::::::::::::::::::::::::
@echo off
::if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
::::::::::::::::::::::::::::::::::::::::::::
call :Git_Menu
::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
::::::::::::::::::::::::::::::::::::::::::::
:Git_Menu
	set /a m200120082024=2
	:begin_m200120082024
	cls
	echo ErrorLevel=%ErrorLevel%
	(if %m200120082024% EQU 0 (<nul set /p strTemp=*))&(echo Exit)
	(if %m200120082024% EQU 1 (<nul set /p strTemp=*))&(echo ScriptGit+add.+AutoCommit+push)
	(if %m200120082024% EQU 2 (<nul set /p strTemp=*))&(echo Нет)
	(if %m200120082024% EQU 3 (<nul set /p strTemp=*))&(echo Сомневаюсь)
	::Управляющие структуры
	set /a m200120082024m=3
	choice /c wse
	if %ErrorLevel% EQU 1 echo 1 w
	if %ErrorLevel% EQU 1 (set /a m200120082024=%m200120082024%-1)
	if %ErrorLevel% EQU 1 if %m200120082024% LSS 0 set /a m200120082024=%m200120082024m%
	if %ErrorLevel% EQU 1 goto :begin_m200120082024
	if %ErrorLevel% EQU 2 echo 2 s
	if %ErrorLevel% EQU 2 (set /a m200120082024=%m200120082024%+1)
	if %ErrorLevel% EQU 2 if %m200120082024% GTR %m200120082024m% set /a m200120082024=0
	if %ErrorLevel% EQU 2 goto :begin_m200120082024
	::Самостоятельный выход из меню
	if %ErrorLevel% EQU 3 echo 3 e
	::Вшитый функционал
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 0 echo Exit
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 1 echo ScriptGit+add.+AutoCommit+push
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 1 (
		git add .
		git status
		echo !!!
		echo "AutoCommit_%date:~-4%.%date:~3,2%.%date:~0,2%_%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%_%username%%"
		echo !!!
		git commit -m "AutoCommit_%date:~-4%.%date:~3,2%.%date:~0,2%_%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%_%username%%"
		git log -3
		echo git log ......
		git push
		TIMEOUT /T 5
		Exit
	)
  if %ErrorLevel% EQU 3 if %m200120082024% EQU 1 goto :begin_m200120082024
  if %ErrorLevel% EQU 3 if %m200120082024% EQU 2 echo Нет
  if %ErrorLevel% EQU 3 if %m200120082024% EQU 2 goto :begin_m200120082024
  if %ErrorLevel% EQU 3 if %m200120082024% EQU 3 echo Сомневаюсь
  if %ErrorLevel% EQU 3 if %m200120082024% EQU 3 goto :begin_m200120082024
exit /b
