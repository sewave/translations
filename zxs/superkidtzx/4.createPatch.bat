@echo off
set T_FILENAME="TR_Superkid.tzx"
set S_FILENAME="Superkid.tzx"
set SCRIPTNAME="superkidtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
