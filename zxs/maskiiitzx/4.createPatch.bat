@echo off
set T_FILENAME="TR_Mask III.tzx"
set S_FILENAME="Mask III.tzx"
set SCRIPTNAME="maskiiitzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
