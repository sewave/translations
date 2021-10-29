@echo off
set T_FILENAME="Monty on the Run - Monty no Doki Doki Dai Dassou (Japan) [b] [T+ENG].fds"
set SCRIPTNAME="montyontherunmontynodokidokidaidassoufds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
