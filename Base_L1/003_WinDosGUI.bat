@echo off
::003_WinDosПростейшийПродвинутыйИнтерфейс
::Идей проста как штырь
::Предварительно печатаете как в консоль
::Только с перенаправлением потоков ввода и вывода.
:: > - перезаписать файл
:: >> дозаписать файл
set LocalTemp=_Temp.bat
echo ::::::::::::::::::::::::::::::>%LocalTemp%
echo ::Введите параметры>>%LocalTemp%
echo ::(Только дописвайте значений)>>%LocalTemp%
echo set param1=1992>>%LocalTemp%
echo set param2=HelloWorda>>%LocalTemp%
echo set param3=QWE>>%LocalTemp%
echo ::::::::::::::::::::::::::::::>>%LocalTemp%
echo ::А теперь запуск и исполнение>>%LocalTemp%
echo ::Всех ваших желаний>>%LocalTemp%
echo ::Только случайно>>%LocalTemp%
echo ::Не отформатируйте системный диск>>%LocalTemp%
::Когда CMD "ДеДосит" себя то оно удаляет
::лишние проценты у параметров
echo echo %%param1%%>>%LocalTemp%
echo echo %%param2%%>>%LocalTemp%
echo echo %%param3%%>>%LocalTemp%
echo ::Для продолжения сохраните>>%LocalTemp%
echo ::И закройте окно текстового редактора>>%LocalTemp%
notepad %LocalTemp%
call %LocalTemp%
TIMEOUT /T 5
DEL %LocalTemp%