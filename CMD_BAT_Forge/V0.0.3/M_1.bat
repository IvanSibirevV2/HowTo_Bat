:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a menu.counter= %menu.counter%+1
if "%1" EQU "" (
	if %menu.id% EQU %menu.counter% (echo * 0. Exit)
	if %menu.id% NEQ %menu.counter% (echo 0. Exit)
)else (if %menu.id% EQU %menu.counter% Exit)
:::::::::::::::::::::::::::::::::::::::::::::::::::