:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a menu.counter= %menu.counter%+1
if "%1" EQU "" (
	if %menu.id% EQU %menu.counter% (echo * 0. Menu_2)
	if %menu.id% NEQ %menu.counter% (echo 0. Menu_2)
)else (if %menu.id% EQU 2 echo Menu_2)
:::::::::::::::::::::::::::::::::::::::::::::::::::
