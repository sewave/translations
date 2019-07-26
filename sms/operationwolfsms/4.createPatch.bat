@echo off
set T_FILENAME="TR_Operation Wolf (U) [!].sms"
set S_FILENAME="Operation Wolf (U) [!].sms"
set SCRIPTNAME="operationwolfsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
