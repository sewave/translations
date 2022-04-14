@echo off
set T_FILENAME="TR_Nazo no Murasamejou (Japan) [T+ENG].fds"
set S_FILENAME="Nazo no Murasamejou (Japan).fds"
set SCRIPTNAME="nazonomurasamejoufds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
