@echo off
set T_FILENAME="TR_Oil's Well (Japan).rom"
set S_FILENAME="Oil's Well (Japan).rom"
set SCRIPTNAME="oilswellrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
