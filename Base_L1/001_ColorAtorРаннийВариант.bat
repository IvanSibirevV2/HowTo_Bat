@echo OFF
call :write 0F "Random"
call :writeLn 0E "%random%"
pause

rem ----------------------------------------------------------------------------------
rem Пишет текст в строку
rem	function:		write
rem	param:			[[BackGroundColor][ForeGroundColor]] [string]
rem	return value:	void
rem ----------------------------------------------------------------------------------
:write
setlocal
  :write1
  set "tempFolder=%TEMP%\%~n0.%time:~-2%.%random%"
  ::Создать каталог
  md "%tempFolder%" 2>nul || goto write1
  ::Запомнить текущий каталог и перейти в указанный
  pushd %tempFolder%
	  set /p .=.<nul>"%2"
	  ::Ищет строку в файлех каталога
	  ::findstr /a:%1 /c:"." /s "%2"
	  findstr /a:%1 . *
  ::Возврат в исходный каталог
  popd
  ::Подтирание за собой::Удаляет всю временную хрень
  rd /s /q "%tempFolder%" 2>nul
endlocal
exit /b
rem ----------------------------------------------------------------------------------
rem Пишет текст в строку с переходом н новую
rem	function:		writeLn
rem	param:			[[BackGroundColor][ForeGroundColor]] [string]
rem	return value:	void
rem ----------------------------------------------------------------------------------
:writeLn
  call :write %1 "%~2"
  echo.
exit /b
rem ----------------------------------------------------------------------------------