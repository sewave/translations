@echo off
set T_FILENAME="TR_Satellite 7 (J) [!].sms"
set S_FILENAME="Satellite 7 (J) [!].sms"
set SCRIPTNAME="satellite7sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
