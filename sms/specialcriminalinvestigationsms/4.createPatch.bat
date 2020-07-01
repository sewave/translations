@echo off
set T_FILENAME="TR_Special Criminal Investigation (E) [!].sms"
set S_FILENAME="Special Criminal Investigation (E) [!].sms"
set SCRIPTNAME="specialcriminalinvestigationsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
