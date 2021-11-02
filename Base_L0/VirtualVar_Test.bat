@echo off
echo %:VirtualVar.init%
::call :VirtualVar.init "VirtualVar.bat"

	call :defVar A www
	if defined A (echo %A%)
	call :getVar A B
	echo B=%B%

TIMEOUT /T 10
PAUSE
CLS
EXIT