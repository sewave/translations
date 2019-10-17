@echo off
set T_FILENAME="TR_GP Rider (EB) [!].sms"
set S_FILENAME="GP Rider (EB) [!].sms"
set SCRIPTNAME="gpridersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
