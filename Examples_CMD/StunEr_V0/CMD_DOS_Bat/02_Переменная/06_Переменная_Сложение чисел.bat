start notepad++ %0 
:::::::::::::::::::::::::::::::::
set per1= 4
set per2= 3
::�������� �ᥫ
set /a rez= %per1%+%per2%
::���⠭�� �ᥫ
::set /a rez= %per1%-%per2%
::㬭������ �ᥫ
::set /a rez= %per1%*%per2%
::������� �ᥫ
::set /a rez= %per1%/%per2%
echo "rez=%per1%+%per2%=%rez%"
::::::::::::::::::::::::::::::::::::::::::::pause