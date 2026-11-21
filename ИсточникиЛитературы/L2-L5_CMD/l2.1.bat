@echo off
rem Насильно указываем точку старта проги
cd C:\D
echo %cd%
echo ******************
rem Создать папку
MD L1
rem Посмотреть содержимое каталога
DIR/P
rem Переход в подкаталог
cd L1
echo %cd%
rem создаем файл
echo qwe >>a.txt
echo wer >>a.txt
echo ert >>a.txt
rem Вывод текста на экран
TYPE a.txt
pause
rem Создаем дополнительную папка
MD L2
rem Кидаем туда заранее созданный файл
COPY a.txt L2/a.txt
rem переименование файла
ren a.txt b.txt
rem Удаляем это дело
DEL b.txt
rem удаляем каталог странно, почему то не работает
RD /S /Q C:\D\L1\L2
DIR/P
rem и просто посмотреть каталог
DIR



::COPY CON a.txt Enter
rem Переход в интерактивный режим типо

TIMEOUT /T 100