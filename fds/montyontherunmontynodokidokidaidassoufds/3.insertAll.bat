@echo off
set T_FILENAME="TR_Monty on the Run - Monty no Doki Doki Dai Dassou (Japan) [b] [T+ENG].fds"
set S_FILENAME="Monty on the Run - Monty no Doki Doki Dai Dassou (Japan) [b] [T+ENG].fds"
set SCRIPTNAME="montyontherunmontynodokidokidaidassoufds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
