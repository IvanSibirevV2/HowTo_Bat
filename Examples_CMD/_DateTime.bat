@echo OFF
cd %~dp0
	::Если параметр пустой, то запускай мэин
	if "%1"=="" (call :DateTime.Main)
	::Если параметр мэин, то запускай мэин
	if %1 EQU ":Main" (call :DateTime.Main)
	::Иначе работаем как библиотека
	if %1 EQU ":Now" (call :DateTime.Now %2)
	if %1 EQU ":Now.Year" (call :DateTime.Now.Year %2)
	if %1 EQU ":Now.Month" (call :DateTime.Now.Month %2)
	if %1 EQU ":Now.Day" (call :DateTime.Now.Day %2)
	if %1 EQU ":Now.Hour" (call :DateTime.Now.Hour %2)
	if %1 EQU ":Now.Minutes" (call :DateTime.Now.Minutes %2)
	if %1 EQU ":Now.Seconds" (call :DateTime.Now.Seconds %2)
	if %1 EQU ":Now.Guid" (call :DateTime.Now.Guid %2)
exit /b
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:DateTime.Main
	echo DateTime.bat
	echo BLL-Bat Lite Library
	echo.
	echo :DateTime.Now
	echo :DateTime.Now.Year
	echo :DateTime.Now.Month
	echo :DateTime.Now.Day
	echo :DateTime.Now.Hour
	echo :DateTime.Now.Minutes
	echo :DateTime.Now.Seconds
	echo :DateTime.Now.Guid
	echo.
	call :DateTime.Now _Now
	echo DateTime.Now=%_Now%
	call :DateTime.Now.Year _Year
	echo DateTime.Now.Year=%_Year%
	call :DateTime.Now.Month _Month
	echo DateTime.Now.Month=%_Month%
	call :DateTime.Now.Day _Day
	echo DateTime.Now.Day=%_Day%
	call :DateTime.Now.Hour _Hour
	echo DateTime.Now.Hour=%_Hour%
	call :DateTime.Now.Minutes _Minutes
	echo DateTime.Now.Minutes=%_Minutes%
	call :DateTime.Now.Seconds _Seconds
	echo DateTime.Now.Seconds=%_Seconds%
	call :DateTime.Now.Guid _Guid
	echo DateTime.Now.Guid=%_Guid%
	echo ################################################################
	pause
	TIMEOUT /T 10
exit /b
:DateTime.Now
	set %1=%date%
exit /b
:DateTime.Now.Year
	set %1=%date:~-4%
exit /b
:DateTime.Now.Month
	set %1=%date:~3,2%
exit /b
:DateTime.Now.Day
	set %1=%date:~0,2%
exit /b
:DateTime.Now.Hour
	set %1=%TIME:~0,2%
exit /b
:DateTime.Now.Minutes
	set %1=%TIME:~3,2%
exit /b
:DateTime.Now.Seconds
	set %1=%TIME:~6,2%
exit /b
rem	call :System.DateTime.Guid %Result%
rem Возвращает неповторяющуюся строку в формате
rem [дата запуска батника]_[время запуска батника]_[Коллическво запусков этой функции]_[запустивший пользователь].
rem Удобно для генерации имени временных файлов
:: Смотрите, все четко работает.
:: Проверял, при запуске из внешнего покетного файла два разных Call соответствуют двум разным секундам (иначе у них растет каунтер), беспокоиться не приходится. Железно проверял.
::Так касяк с часом, не беспокойтесь, пробел 8 всего то означает что сейчас 8 утра, это не баг процедуры, это особенности времени в досе
:DateTime.Now.Guid
	set /a System.DateTime.Guid.Counter= %System.DateTime.Guid.Counter%+1
	set %1=%date:~-4%%date:~3,2%%date:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%_%System.DateTime.Guid.Counter%_%username%%
exit /b
