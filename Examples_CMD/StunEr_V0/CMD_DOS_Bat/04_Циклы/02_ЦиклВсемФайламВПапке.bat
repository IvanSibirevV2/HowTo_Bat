start notepad++ %0
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::横� �� �ᥬ 䠩��� � �����
for  %%f in (*) do (echo %%~nxf)
::横� �� �ᥬ 䠩��� � ����� � 䨫��஬ �� ��᪥, ���ਬ�� �� ���७��
for  %%f in (*.txt *.exe) do (echo %%~nxf)
::横� �� �ᥬ 䠩��� � ����� � ���������
for /r %%a in (*.*) do echo %%a
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::pause