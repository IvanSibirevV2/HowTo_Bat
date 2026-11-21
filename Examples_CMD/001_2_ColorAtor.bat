:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
	echo ColorAtor.bat
	echo.
	echo :ColorAtor.echo
	echo.
	call :echo ff "88" /
	call :echo 33 "88" /
	call :echo ff "8" /
	call :echo 33 "88" /
	call :echo ff "88"

	call :echo ff "8" /
	call :echo 33 "8" /
	call :echo 44 "88" /
	call :echo 33 "8" /
	call :echo 44 "88" /
	call :echo 33 "8" /
	call :echo ff "8"
	
	call :echo 33 "8" /
	call :echo 44 "8" /
	call :echo ff "8" /
	call :echo 44 "88888" /
	call :echo 33 "8"
	
	call :echo 33 "8" /
	call :echo 44 "8" /
	call :echo 44 "888888" /
	call :echo 33 "8"
	
	call :echo ff "8" /
	call :echo 33 "8" /
	call :echo 44 "8" /
	call :echo 44 "8888" /
	call :echo 33 "8" /
	call :echo ff "8"
	
	call :echo ff "88" /
	call :echo 33 "8" /
	call :echo 44 "8" /
	call :echo 44 "88" /
	call :echo 33 "8" /
	call :echo ff "88"
	
	call :echo ff "888" /
	call :echo 33 "8" /
	call :echo 44 "8" /
	call :echo 33 "8" /
	call :echo ff "888"
	
	call :echo 0E "www" /
	call :echo 4 "RRR"
	
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
:echo
md "TempColor"
pushd "%~dp0"
pushd "TempColor"
prompt $h
for /f %%i in ('"prompt $h& for %%i in (.) do rem"') do (
	<nul>"%~2" set/p="%%i %%i"
)
findstr/a:%~1 . *
if "%~3" neq "/" echo.	
popd
rd/q/s "TempColor"
popd
prompt
exit/b