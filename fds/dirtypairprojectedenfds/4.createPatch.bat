@echo off
set T_FILENAME="TR_Dirty Pair - Project Eden (Japan) [b] [T+ENG].fds"
set S_FILENAME="Dirty Pair - Project Eden (Japan) [b].fds"
set SCRIPTNAME="dirtypairprojectedenfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
