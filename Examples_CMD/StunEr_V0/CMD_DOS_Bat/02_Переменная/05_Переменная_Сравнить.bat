start notepad++ %0 
:::::::::::::::::::::::::::::::::
::EQU	ࠢ�� ::NEQ	�� ࠢ��
::LSS	����� ::LEQ	����� ��� ࠢ��
::GTR	����� ::GEQ	����� ��� ࠢ��

set /a per1= 20
echo "per1=%per1%"
set /a per2= 3
echo "per2=%per2%"

if %per1% EQU %per2% echo "per1 == per2  "
if %per1% NEQ %per2% echo "per1 <> per2  "
if %per1% LSS %per2% echo "per1 < per2  "
if %per1% LEQ %per2% echo "per1 <= per2  "
if %per1% GTR %per2% echo "per1 > per2  "
if %per1% GEQ %per2% echo "per1 >= per2  "
::::::::::::::::::::::::::::::::::::::::::::pause