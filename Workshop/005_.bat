@echo off
cd %~dp0
(
	echo set a=4
	echo set b=2
	echo ::set appr=+
	echo ::set appr=-
	echo ::set appr=*
	echo set appr=/
	echo set /a rez=%%a%%%%appr%%%%b%%
	echo echo %%rez%%
	echo echo qwe
	echo PAUSE
)> MyCall.bat
notepad "MyCall.bat
MyCall.bat
PAUSE
EXIT