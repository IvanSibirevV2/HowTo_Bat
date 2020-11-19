@echo OFF
	::Если параметр пустой, то запускай мэин
	if "%1"=="" (call :Main)
	::Если параметр мэин, то запускай мэин
	if %1 EQU ":Main" (call :Main)
	::Иначе работаем как библиотека
	if %1 EQU ":Now" (call :Now %2)
	if %1 EQU ":Now.Year" (call :Now.Year %2)
	if %1 EQU ":Now.Month" (call :Now.Month %2)
	if %1 EQU ":Now.Day" (call :Now.Day %2)
	if %1 EQU ":Now.Hour" (call :Now.Hour %2)
	if %1 EQU ":Now.Minutes" (call :Now.Minutes %2)
	if %1 EQU ":Now.Seconds" (call :Now.Seconds %2)
	if %1 EQU ":Now.Guid" (call :Now.Guid %2)
exit /b
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Main
	echo "<<<BAT LIB>>>"
	echo ################################################################
	call "DateTime.bat" ":Now" rez
	echo :Now=%rez%
	call "DateTime.bat" ":Now.Year" rez
	echo :Now.Year=%rez%
	call "DateTime.bat" ":Now.Month" rez
	echo :Now.Month=%rez%
	call "DateTime.bat" ":Now.Day" rez
	echo :Now.Day=%rez%
	call "DateTime.bat" ":Now.Hour" rez
	echo :Now.Hour=%rez%
	call "DateTime.bat" ":Now.Minutes" rez
	echo :Now.Minutes=%rez%
	call "DateTime.bat" ":Now.Seconds" rez
	echo :Now.Seconds=%rez%
	call "DateTime.bat" ":Now.Guid" rez
	echo :Now.Guid=%rez%
	call "DateTime.bat" ":Now.Guid" rez
	echo :Now.Guid=%rez%
	echo ################################################################
	TIMEOUT /T 10
exit /b
:Now
	set %1=%date%
exit /b
:Now.Year
	set %1=%date:~-4%
exit /b
:Now.Month
	set %1=%date:~3,2%
exit /b
:Now.Day
	set %1=%date:~0,2%
exit /b
:Now.Hour
	set %1=%TIME:~0,2%
exit /b
:Now.Minutes
	set %1=%TIME:~3,2%
exit /b
:Now.Seconds
	set %1=%TIME:~6,2%
exit /b
rem	call :System.DateTime.Guid %Result%
rem Возвращает неповторяющуюся строку в формате
rem [дата запуска батника]_[время запуска батника]_[Коллическво запусков этой функции]_[запустивший пользователь].
rem Удобно для генерации имени временных файлов
:: Смотрите, все четко работает.
:: Проверял, при запуске из внешнего покетного файла два разных Call соответствуют двум разным секундам (иначе у них растет каунтер), беспокоиться не приходится. Железно проверял.
::Так касяк с часом, не беспокойтесь, пробел 8 всего то означает что сейчас 8 утра, это не баг процедуры, это особенности времени в досе
:Now.Guid
	set /a System.DateTime.Guid.Counter= %System.DateTime.Guid.Counter%+1
	set %1=%date:~-4%%date:~3,2%%date:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%_%System.DateTime.Guid.Counter%_%username%%
exit /b