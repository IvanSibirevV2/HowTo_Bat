CLS
@call :Init
@call :StapInit
::---------------------------------------------------------------------------

@call :StapThis "qwe.txt"
TIMEOUT /T 10
exit

:Init
	@echo off
	echo Init{
	chcp 1251 >nul
	echo %cd%
	cd "C:\D\008_DosBat_Git0\WorkingScript"
	echo %cd%
	echo }
exit /b
:StapInit
	echo StapInit{
	@echo Speed Stapler
	@set assembly=%date% %time% %username%
	@set assembly=%assembly::=,%
	@set assembly=%assembly: =_%
	@set assembly=%assembly:.=,%
	@set assembly=%assembly:,=,%
	@echo "%assembly%" 

	@set FileWrite="_%assembly%.txt"
	echo fsd >> %FileWrite%
	echo —оздан‘айл:%FileWrite%
	echo }
exit /b
rem %1 - им€ файла, который нужно перекастить
:StapThis
	echo StapThis(%1,%FileWrite%){
	for /f "usebackq tokens=*" %%a in (%1) do (echo %%~a >> %FileWrite%)
	echo }
exit /b

