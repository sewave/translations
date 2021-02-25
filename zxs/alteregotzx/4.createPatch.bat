@echo off
set T_FILENAME="TR_Alter Ego.tzx"
set S_FILENAME="Alter Ego.tzx"
set SCRIPTNAME="alteregotzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
