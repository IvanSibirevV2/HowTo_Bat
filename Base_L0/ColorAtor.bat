:::::::::::::::::::::::::::::::::
@echo OFF
cd %~dp0
	::Если параметр пустой, то запускай мэин
	if "%1"=="" (call :ColorAtor.Main)
	::Если параметр мэин, то запускай мэин
	if %1 EQU ":Main" (call :ColorAtor.Main)
	if %1 EQU ":echo" (call :ColorAtor.echo %2 %3 %4)
pause
exit /b
:ColorAtor.Main
	echo ColorAtor.bat
	echo BLL-Bat Lite Library
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
	
pause	
exit /b
:::::::::::::::::::::::::::::::::
:ColorAtor.echo
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