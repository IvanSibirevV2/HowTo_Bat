rem �⮡� �������� ��६�����, � ��������� ��ப� ������
set FileWrite="%date% %time%.html"
::�᫨ ��६����� �������
if defined FileWrite (echo "FileWrite - defined")
::�᫨ ��६����� �� �������
if not defined FileWrite (echo "FileWrite - not defined")
::����塞 ��६�����
set FileWrite=
if defined FileWrite (echo "FileWrite - defined")
if not defined FileWrite (echo "FileWrite - not defined")