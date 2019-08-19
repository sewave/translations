@echo off
set T_FILENAME="TR_Krusty's Fun House (E) [!].sms"
set S_FILENAME="Krusty's Fun House (E) [!].sms"
set SCRIPTNAME="krustysfunhousesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
