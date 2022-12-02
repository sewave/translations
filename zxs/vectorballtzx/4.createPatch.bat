@echo off
set T_FILENAME="TR_Vector Ball.tzx"
set S_FILENAME="Vector Ball.tzx"
set SCRIPTNAME="vectorballtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
