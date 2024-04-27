@echo off
set T_FILENAME="TR_Action Reflex.tzx"
set S_FILENAME="Action Reflex.tzx"
set SCRIPTNAME="actionreflextzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
