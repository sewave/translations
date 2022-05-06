@echo off
set T_FILENAME="TR_Tank Command.tzx"
set S_FILENAME="Tank Command.tzx"
set SCRIPTNAME="tankcommandtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
