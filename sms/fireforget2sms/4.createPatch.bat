@echo off
set T_FILENAME="TR_Fire & Forget 2 (E) [!].sms"
set S_FILENAME="Fire & Forget 2 (E) [!].sms"
set SCRIPTNAME="fireforget2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
