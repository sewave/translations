@echo off
set T_FILENAME="TR_Monty on the Run - Monty no Doki Doki Dai Dassou (Japan) [b] [T+ENG].fds"
set S_FILENAME="Monty on the Run - Monty no Doki Doki Dai Dassou (Japan) [b].fds"
set SCRIPTNAME="montyontherunmontynodokidokidaidassoufds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
