start notepad++ %0 
:::::::::::::::::::::::::::::::::
set per1= 4
set per2= 3
::Сложение чисел
set /a rez= %per1%+%per2%
::вычитание чисел
::set /a rez= %per1%-%per2%
::умножение чисел
::set /a rez= %per1%*%per2%
::деление чисел
::set /a rez= %per1%/%per2%
echo "rez=%per1%+%per2%=%rez%"
::::::::::::::::::::::::::::::::::::::::::::pause