:::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Как линковать функции в ***_run.bat
@echo off
cd "C:\D\Git_Hub\HowTo_Bat\Base_L0"
set FileName="_%date:.=,%_%time::=,%_%username%.bat"
echo %FileName%
::Посылаем в лоб программный код на дозапись в файл
(
	echo @echo off
	echo echo HelloWorld
	echo pause
	echo exit /b
	type BLL.bat
)>> %FileName%
notepad %FileName%
%FileName%
pause
exit /b