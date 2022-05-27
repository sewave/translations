@echo off
set T_FILENAME="TR_All Night Nippon Super Mario Brothers (Japan) (Promotion Card).fds"
set S_FILENAME="All Night Nippon Super Mario Brothers (Japan) (Promotion Card).fds"
set SCRIPTNAME="allnightnipponsupermariobrothersfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
