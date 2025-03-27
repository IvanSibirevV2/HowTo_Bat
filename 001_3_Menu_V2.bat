::Рассматриваем возможность того что 
::Менюшка может быть сложнее чем просто папка с микробатниками
:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::
call :FuncMenu
(TIMEOUT /T 1)&&(pause)&&(exit /b)
::::::::::::::::::::::::::::::::::::::::::::
:FuncMenu
	setlocal EnableDelayedExpansion
	SetLocal
		set /a IdSelect=1
		set /a IdWork=0
		set /a IdCount=0
		::set /a m205019082024=2
		:returnPoint_205019082024
		::DefaultValues
		cls
		echo ErrorLevel=%ErrorLevel%
		set /a IdCount=-1
		::Viev		
		:::::::::::::::::::::::::::::::::::::::::::::::::::
			set /a IdCount=%IdCount%+1
			if %IdSelect% EQU %IdCount% (<nul set /p strTemp=*)
			echo Выход
		:::::::::::::::::::::::::::::::::::::::::::::::::::
			set /a IdCount=%IdCount%+1
			if %IdSelect% EQU %IdCount% (<nul set /p strTemp=*)
			echo Да
		:::::::::::::::::::::::::::::::::::::::::::::::::::
			set /a IdCount=%IdCount%+1
			if %IdSelect% EQU %IdCount% (<nul set /p strTemp=*)
			echo Нет
		:::::::::::::::::::::::::::::::::::::::::::::::::::
			set /a IdCount=%IdCount%+1
			if %IdSelect% EQU %IdCount% (<nul set /p strTemp=*)
			echo Сомневаюсь
		:::::::::::::::::::::::::::::::::::::::::::::::::::
		choice /c wse
		if %ErrorLevel% EQU 1 (set /a IdSelect=%IdSelect%-1)
		if %ErrorLevel% EQU 1 (if %IdSelect% LSS 0 set /a IdSelect=%IdCount%)
		if %ErrorLevel% EQU 2 (set /a IdSelect=%IdSelect%+1)
		if %ErrorLevel% EQU 2 (if %IdSelect% GTR %IdCount% set /a IdSelect=0)
		if %ErrorLevel% EQU 3 (set IdWork=IdWork)
		goto :returnPoint_205019082024
	endlocal
exit /b
::Обьявление начала меню
:begin_205019082024

choice /c wse

::Вшитый функционал
if %ErrorLevel% EQU 3 if %m205019082024% EQU 0 echo Выход
if %ErrorLevel% EQU 3 if %m205019082024% EQU 1 echo Да
if %ErrorLevel% EQU 3 if %m205019082024% EQU 1 goto :begin_205019082024
if %ErrorLevel% EQU 3 if %m205019082024% EQU 2 echo Нет
if %ErrorLevel% EQU 3 if %m205019082024% EQU 2 goto :begin_205019082024
if %ErrorLevel% EQU 3 if %m205019082024% EQU 3 echo Сомневаюсь
if %ErrorLevel% EQU 3 if %m205019082024% EQU 3 goto :begin_205019082024
::Самостоятельный выход из меню
if %ErrorLevel% EQU 3 echo 3 e
:::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::