:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a menu.counter= %menu.counter%+1
if "%1" EQU "" (
	if %menu.id% EQU %menu.counter% (echo * 0. Menu_1)
	if %menu.id% NEQ %menu.counter% (echo 0. Menu_1)
)else (if %menu.id% EQU %menu.counter% echo Menu_1)
:::::::::::::::::::::::::::::::::::::::::::::::::::
