::---------------------------------------------------------
::���� ����� ������������� ������ 
::SetLocal
::EndLocal
::������������ ��� ���������� ���������� ������������ ����������
::---------------------------------------------------------
echo OFF
set per1=AAA
echo %per1%
::call "EchoColor.BAT" 97 "������ ������� ���"
SetLocal
	set per1=BBB
	echo %per1%
	SetLocal
		set per1=CCC
		echo %per1%
	endlocal
	echo %per1%
endlocal
echo %per1%
TIMEOUT /T 2