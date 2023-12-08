:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
:::::::::::::::::::::::::::::::::::::::::::::
setlocal EnableDelayedExpansion
::Config
::https://learn.microsoft.com/ru-ru/windows/win32/inputdev/virtual-key-codes?redirectedfrom=MSDN
set _Backspace=0x08
set _TAB=0x09
set _ENTER=0x0D
set _SHIFT=0x10
set _CTRL=0x11
set _ALT=0x12
set _PAUSE=0x13
set _CAPSLOCK=0x14
set _ESCAPE=0x1B
set _SPACE=0x20
set _PAGEUP=0x21
set _PAGEDOWN=0x22
set _END=0x23
set _HOME=0x24
set _arrow.LEFT=0x25
set _arrow.UP=0x26
set _arrow.RIGHT=0x27
set _arrow.DOWN=0x28
set _INSERT=0x2D
set _DELETE=0x2E
set _0=0x30
set _1=0x31
set _2=0x32
set _3=0x33
set _4=0x34
set _5=0x35
set _6=0x36
set _7=0x37
set _8=0x38
set _9=0x39
(set _A=0x41)&&(set _+A=0d41)&&(set _-A=0u41)
(set _B=0x42)&&(set _+B=0d42)&&(set _-B=0u42)
(set _C=0x43)&&(set _+C=0d43)&&(set _-C=0u43)
(set _D=0x44)&&(set _+D=0d44)&&(set _-D=0u44)
(set _E=0x45)&&(set _+E=0d45)&&(set _-E=0u45)
(set _F=0x46)&&(set _+F=0d46)&&(set _-F=0u46)
(set _G=0x47)&&(set _+G=0d47)&&(set _-G=0u47)
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
(set _I=0x49)&&(set _+I=0d49)&&(set _-I=0u49)
(set _J=0x4A)&&(set _+J=0d4A)&&(set _-J=0u4A)
(set _K=0x4B)&&(set _+K=0d4B)&&(set _-K=0u4B)
(set _L=0x4C)&&(set _+L=0d4C)&&(set _-L=0u4C)
(set _M=0x4D)&&(set _+M=0d4D)&&(set _-M=0u4D)
(set _N=0x4E)&&(set _+N=0d4E)&&(set _-N=0u4E)
(set _O=0x4F)&&(set _+O=0d4F)&&(set _-O=0u4F)
set _P=0x50
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _Q=0x51
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _R=0x52
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _S=0x53
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _T=0x54
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _U=0x55
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _V=0x56
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _W=0x57
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _X=0x58
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _Y=0x59
(set _H=0x48)&&(set _+H=0d48)&&(set _-H=0u48)
set _Z=0x5A
set _WIN=0x5B
set _LWIN=0x5B
set _RWIN=0x5C
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo %cd%
::nircmd sendkey a press
::nircmd /?
::Установить курсор в координаты 50 50
::nircmd movecursor 10 10
::nircmd sendmouse right click
::echo %VK_DOWN%
::sendkey [Key] [press | down | up] 
::nircmd sendmouse move -30 20
::echo %_H% %_+H% %_-H%
call :Script001
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 10)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
:Script000
::Крутим мышкой
for /L %%i in (1,1,10) do (
 call :MouseMoveR 25 0
 call :MouseMoveR 0 25
 call :MouseMoveR -25 0
 call :MouseMoveR 0 -25
 echo i = %%i
)
exit /b
:Script001
::Пытаемся в соседней вкладке нажимать на клавиатуру
call :npp.new
call :KeyPress %_+H% %_-H% %_E% %_L% %_L% %_O% %_W% %_SPACE% %_W% %_O% %_R% %_L% %_D% %_ENTER%
exit /b
:Script002
call :KeyPress %_+H% %_-H% %_E% %_ENTER%
exit /b
::::::::::::::::::::::::::::::::::::::::::::
:npp.new
call :MouseMove 500 10
call :MouseLeftClick
call :MouseMove 10 70
call :MouseLeftClick
exit /b
:::::::::::::::::::::::::::::::::::::::::::::
:MouseMove
nircmd setcursor %1 %2
exit /b
:MouseMoveR
nircmd movecursor %1 %2
exit /b
:MouseLeftClick
nircmd sendmouse left click
exit /b
:MouseRightClick
nircmd sendmouse right click
exit /b
:WaitMS
nircmd wait %1
exit /b
:KeyPress
::for %%i in (%*) do (nircmd sendkey %%i press)
for %%i in (%*) do (
 echo qwe
 set VarText=%%i
 if "!VarText:~1,1!" EQU "x" ( nircmd sendkey !VarText! press
 )else if "!VarText:~1,1!" EQU "u" ( nircmd sendkey !VarText:u=x! up
 )else if "!VarText:~1,1!" EQU "d" ( nircmd sendkey !VarText:d=x! down )
nircmd wait 1
)
exit /b