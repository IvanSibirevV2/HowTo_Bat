:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a UI0.counter= %UI0.counter%+1
if "%1" EQU "" (
	if %UI0.id% EQU %UI0.counter% (echo * 0. Menu_2)
	if %UI0.id% NEQ %UI0.counter% (echo 0. Menu_2)
)else (if %UI0.id% EQU 2 echo Menu_2)
:::::::::::::::::::::::::::::::::::::::::::::::::::
