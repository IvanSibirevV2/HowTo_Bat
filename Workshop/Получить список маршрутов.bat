@echo off
call "OpenRouterSettings.url"
::Зависит от роутера
::Переберите и запустите все адреса
echo %OS%
echo %PROCESSOR_ARCHITECTURE%
route print 

pause