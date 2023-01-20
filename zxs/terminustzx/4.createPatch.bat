@echo off
set T_FILENAME="TR_Terminus.tzx"
set S_FILENAME="Terminus.tzx"
set SCRIPTNAME="terminustzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
