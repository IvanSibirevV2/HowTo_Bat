@echo off
::¬ключаем русский текст
chcp 1251 >nul
cd C:\D\008_DosBat_Git0
echo %cd%
::::::::::::::::::::::::::::::::
set FileWrite=_%date%_%time%.txt
echo %date%_%time%>>%%FileWrite%%
%FileWrite%
set shift=  ::


for /f "tokens=*" %%a in ('type txt.txt') do (
  echo %shift% %%a
)

pause