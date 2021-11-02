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
rem Подшивание файлов из bll
rem Сначала заголовок будующего файла
(
	echo @echo off
	echo echo HelloWorld
)>> %FileName%
rem Затем основной исполняемый код
call :StapThis StubStapler_Example.bat
rem Затем окончание нашего файла
(
	echo PAUSE
	echo CLS
	echo EXIT
)>> %FileName%
rem Затем Подшиваемые batll файлы
::::::::::::::::::::::::::::::::::::::::::::::::::::
rem Затем Что с полученным файлом потом нужно сделать
notepad %FileName%
CLS
call %FileName%
::::::::::::::::::::::::::::::::::::::::::::::::::::
PAUSE
CLS
EXIT
rem %1 - имя файла, который нужно подшить
:StapThis
	echo %1
	for /f "usebackq tokens=*" %%a in (%1) do (
		@echo %%~a >> %FileName%
	)
	echo %1 Ok
exit /b