::�� ����ᠭ���
:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit))
cd %~dp0
title %~n0%~x0
setlocal EnableDelayedExpansion
cls
:::::::::::::::::::::::::::::::::::::::::::::
goto NameSpase_Stack_End
	::set Stack=q;w;e;
	:SetStack
		::set Stack=q;w;e;
		
		::set Stack=%1
	exit /b
:NameSpase_Stack_End
::�������� �⥪�
set Stack=q;w;e;
echo %Stack%
::���������� ������� � ���ᨢ�
set Stack=r;%Stack%
echo %Stack%
::������� ���設�


::�ॡ���� �������� ������ ࠡ��� � ���ᨢ���
::� ����⢥ ������ ���ᨢ�� �।���������� �ᯮ�짮����
::⥪�⮢�� ��॥����� � ࠧ����⥫��;
::�ணࠬ�� �㤥� ��ᨬ���쭮 ��ॡ���� ⥪�⮢�� ��६�����
::� 
::�����, ����� 䥭�樨 �㦭� ��� ࠡ��� � ���ᨢ��...
::
:: ����� ���⮥ �� ॠ�������� �⥪��� ���ᨢ���
:: - pop - ������ ���設� �⥪� � 㤠������
:: - popw - ������ ���設� �⥪� ��� 㤠�����
:: - push - �������� ���設� �⥪�
:: - turn - ��ॢ����� �⥪
:: - select - ��ॢ����� �⥪
:: - count - ������ �������⢮ �祪 � ����⮩
:: �����饭�� ��� ���祭�� �ந�������� � %eax%
:: %ebp% - �࠭��� ���� ������� �⥪�
:: %esp% - �࠭��� ��᫥���� ������� �⥪�
:: %ss% - �࠭��� ᥫ���� �⥪�
:: �������� ॠ������ �������� �������� ���稪�� � ��譥�� �����
:: ���஡㥬 ����� � ���
::
::���� ���, ����
:::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
