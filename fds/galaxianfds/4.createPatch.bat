@echo off
set T_FILENAME="TR_Galaxian (Japan) [b].fds"
set S_FILENAME="Galaxian (Japan) [b].fds"
set SCRIPTNAME="galaxianfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
