@echo off
set T_FILENAME="TR_Sukeban Deka 2 (J) [T+ENG].sms"
set S_FILENAME="Sukeban Deka 2 (J) [!].sms"
set SCRIPTNAME="sukebandeka2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
