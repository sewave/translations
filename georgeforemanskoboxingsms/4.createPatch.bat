@echo off
set T_FILENAME="TR_George Foreman's KO Boxing (EB) [!].sms"
set S_FILENAME="George Foreman's KO Boxing (EB) [!].sms"
set SCRIPTNAME="georgeforemanskoboxingsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
