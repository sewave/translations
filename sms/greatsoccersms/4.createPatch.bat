@echo off
set T_FILENAME="TR_Great Soccer (E) [!].sms"
set S_FILENAME="Great Soccer (E) [!].sms"
set SCRIPTNAME="greatsoccersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
