@echo off
cd %~dp0
echo %cd%
:::::::::::::::::::::::::::::::
::dir
for %%‚ in (%cd%\*.*) do (echo %%‚)
::for %d in (*.bat) echo %d
pause
exit /b