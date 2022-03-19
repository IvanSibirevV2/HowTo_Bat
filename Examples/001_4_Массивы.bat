@echo off
cd %~dp0
:: Создание массива А:
call :array new A "'one','two','three','foo','bar'"
:: Получение третьего элемента в result:
call :array get A 3 result
echo %result%
:: Изменение нулевого элемента
call :array set A 0 "первый элемент"ы
pause