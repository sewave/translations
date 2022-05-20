@echo off
set T_FILENAME="TR_Kosmos.tzx"
set S_FILENAME="Kosmos.tzx"
set SCRIPTNAME="kosmostzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
