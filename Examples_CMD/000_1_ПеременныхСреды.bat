:::::::::::::::::::::::::::::::::
@echo off
cd %~dp0
start notepad++ %0 
:::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::
::����祭�� ��� ��६����� �।�
set
rem �� �㦭� �����:
rem rem � :: - ��� ᯮᮡ� �������஢���� �ணࠬ����� ����
rem �� 㬮�砭�� ᮣ��ᨬ�� �ᯮ�짮���� rem
rem ��� ���㬥��஢���� �㭪権 � ���ᠭ�� ⥪�⮢�� ⥮ਨ
rem :: -  ��� �������஢���� �ணࠬ���� ����� 
rem � ������ਥ� ������ �������. �ਬ��:
rem �⮡� �������� ��६�����, � ��������� ��ப� ������
::----------------------------------------------
rem E��� 2 �ᮡ������.
rem ��ࢠ� �� @echo on - rem �뢮��� � ���᮫�
rem ���� :: - ����� �������஢��� ᫥� "/"
rem - ��������� �訡�� 
::����প� �� �६���
TIMEOUT /T 1

set flag=true
echo flag=%flag%
setlocal
	set flagg=%flag%
	echo setlocal
	set flag=false
	echo flag=%flag%
	echo flagg=%flagg%
	echo endlocal
endlocal
echo flag=%flag%
echo �ਢ�� ���
::��㧠
pause