@echo off
set qwe=4
(set qwe=6)&&(echo %qwe%)
(set qwe=8)&&(echo %qwe%)
echo !! %qwe%
echo !!! %%qwe%%
pause
exit /b