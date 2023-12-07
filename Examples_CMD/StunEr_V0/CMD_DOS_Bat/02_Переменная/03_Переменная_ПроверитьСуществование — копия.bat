start notepad++ %0
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem Чтобы добавить переменную, в командной строке введите
set FileWrite="%date% %time%.html"
::Если переменная существует
if defined FileWrite (echo "FileWrite - defined")
::Если переменная не существует
if not defined FileWrite (echo "FileWrite - not defined")
::Удаляем переменную
set FileWrite=
if defined FileWrite (echo "FileWrite - defined")
if not defined FileWrite (echo "FileWrite - not defined")
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::pause