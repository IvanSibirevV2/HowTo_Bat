@cls
@echo OFF
echo %cd%
	call :echo 0E "www" /
	call :echo 4 "RRR"
echo.
echo %cd%
@cls
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
pause
exit /b


:echo
for /f %%i in ('"prompt $h& for %%i in (.) do rem"') do (
	pushd "%~dp0"
	md "mario"
	pushd "mario"
	<nul>"%~2" set/p="%%i %%i"
	findstr/a:%~1 . *
	if "%~3" neq "/" echo.
	popd
	rd/q/s "mario"
	popd
)
exit/b