:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a UI0.counter= %UI0.counter%+1
if "%1" EQU "" (
	if %UI0.id% EQU %UI0.counter% (echo * 0. Menu_1)
	if %UI0.id% NEQ %UI0.counter% (echo 0. Menu_1)
)else (if %UI0.id% EQU %UI0.counter% echo Menu_1)
:::::::::::::::::::::::::::::::::::::::::::::::::::
