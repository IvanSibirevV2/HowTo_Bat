:::::::::::::::::::::::::::::::::::::::::::::
@echo off
::if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
::::::::::::::::::::::::::::::::::::::::::::
call :Git_Menu
::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
::::::::::::::::::::::::::::::::::::::::::::
:Git_Menu
	set /a m200120082024=1
	:begin_m200120082024
	cls
	(if %m200120082024% EQU 0 (<nul set /p strTemp=*))&(echo Exit)
	(if %m200120082024% EQU 1 (<nul set /p strTemp=*))&(echo ScriptGit+add.+AutoCommit+push)
	(if %m200120082024% EQU 2 (<nul set /p strTemp=*))&(echo ScriptGit+add.+Commit+push)
	(if %m200120082024% EQU 3 (<nul set /p strTemp=*))&(echo git init - ������� ९����਩)
	(if %m200120082024% EQU 4 (<nul set /p strTemp=*))&(echo git clone [InputFrom] - �����஢��� ९����਩)
	(if %m200120082024% EQU 5 (<nul set /p strTemp=*))&(echo RD /s/q .git - ������� ����� ���� ������ Git)
	(if %m200120082024% EQU 6 (<nul set /p strTemp=*))&(echo git log - �뢥�� �� �࠭ ᯨ᮪ �����⮢)
	(if %m200120082024% EQU 7 (<nul set /p strTemp=*))&(echo ����������)
	::��ࠢ���騥 ��������
	set /a m200120082024m=7
	choice /c wse
	if %ErrorLevel% EQU 1 echo 1 w
	if %ErrorLevel% EQU 1 (set /a m200120082024=%m200120082024%-1)
	if %ErrorLevel% EQU 1 if %m200120082024% LSS 0 set /a m200120082024=%m200120082024m%
	if %ErrorLevel% EQU 1 goto :begin_m200120082024
	if %ErrorLevel% EQU 2 echo 2 s
	if %ErrorLevel% EQU 2 (set /a m200120082024=%m200120082024%+1)
	if %ErrorLevel% EQU 2 if %m200120082024% GTR %m200120082024m% set /a m200120082024=0
	if %ErrorLevel% EQU 2 goto :begin_m200120082024
	::�������⥫�� ��室 �� ����
	if %ErrorLevel% EQU 3 echo 3 e
	::���� �㭪樮���
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 0 echo Exit
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 1 echo ScriptGit+add.+AutoCommit+push
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 1 (
		git add .
		git status
		echo !!!
		echo "AutoCommit_%date:~-4%.%date:~3,2%.%date:~0,2%_%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%_%username%%"
		echo !!!
		git commit -m "AutoCommit_%date:~-4%.%date:~3,2%.%date:~0,2%_%TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%_%username%%"
		git log -3
		echo git log ......
		git push
		TIMEOUT /T 5
		Exit
	)
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 1 goto :begin_m200120082024
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 2 echo ScriptGit+add.+Commit+push
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 2 (
		git add .
		git status
		git commit
		git log -3
		echo git log .......
		git push
		TIMEOUT /T 5
		Exit
	)
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 2 goto :begin_m200120082024
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 3 echo git init - ������� ९����਩
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 3 git init
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 3 goto :begin_m200120082024
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 4 echo git clone [InputFrom] - �����஢��� ९����਩
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 4 (Set /P InputFrom= git clone [InputFrom]^>)
	::https://github.com/IvanSibirevV2/HowTo_NirCmd.git
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 4 git clone %InputFrom%
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 4 TIMEOUT /T 2
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 4 goto :begin_m200120082024
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 5 echo RD /s/q .git - ������� ����� ���� ������ Git
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 5 RD /s/q .git
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 5 goto :begin_m200120082024
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 6 echo git log - �뢥�� �� �࠭ ᯨ᮪ �����⮢
	::�᫨ �� ᬮ��� ��� �� ���᮫쭮�� ��ᬮ�� �����⮢, � ������ q
	::q - � ��஬ �� - ������ Esc_����� 
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 6 git log
	if %ErrorLevel% EQU 3 if %m200120082024% EQU 6 goto :begin_m200120082024
  if %ErrorLevel% EQU 3 if %m200120082024% EQU 7 echo ����������
  if %ErrorLevel% EQU 3 if %m200120082024% EQU 7 goto :begin_m200120082024
exit /b
