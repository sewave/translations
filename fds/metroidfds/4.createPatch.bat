@echo off
set T_FILENAME="TR_Metroid (Japan) (v1.2) [T+ENG].fds"
set S_FILENAME="Metroid (Japan) (v1.2).fds"
set SCRIPTNAME="metroidfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
