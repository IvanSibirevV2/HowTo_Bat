@echo off
rem Компонент предназначен для динамической сборки исполняемого *.bat файла
rem Используется как навороченная версия Start.bat или Run.bat
rem Устанавливает папку как текущий каталог
rem Затем генерирует название временного файла
rem затем устанавливает все прочие настройки
rem Затем дозаписывает в заданный файл все чего не хватало
rem Затем Открывает/Запускает/Удаляет файл 
@echo off
if "%cd%" EQU "C:\Program Files\Notepad++" (
	cd C:\D\Git_Hub\HowTo_Bat\Base_L0
)
echo %cd%
::::::::::::::::::::::::::::::::::::::::::::::::::::
rem Config
set assembly=%date% %time% %username%
set assembly=%assembly::=,%
set assembly=%assembly: =_%
set assembly=%assembly:.=,%
set assembly=%assembly:,=,%
echo "%assembly%
::@echo "%assembly%" 
@set FileName="_%assembly%.bat"
echo %FileName%
::::::::::::::::::::::::::::::::::::::::::::::::::::
(
	echo @echo off
	echo call :Stack_Test
	echo PAUSE
	echo CLS
	echo EXIT
)>> %FileName%
call :StubStap VirtualVar.bat
call :StubStap Stack.bat
::::::::::::::::::::::::::::::::::::::::::::::::::::
rem Затем Что с полученным файлом потом нужно сделать
::notepad %FileName%
CLS
call %FileName%
::::::::::::::::::::::::::::::::::::::::::::::::::::
PAUSE
CLS
EXIT
rem %1 - имя файла, который нужно подшить
:StubStap
	echo %1
	for /f "usebackq tokens=*" %%a in (%1) do (
		@echo %%~a >> %FileName%
	)
	echo %1 Ok
exit /b