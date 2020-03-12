@echo off
set T_FILENAME="TR_Golf Mania (UE) [!].sms"
set S_FILENAME="Golf Mania (UE) [!].sms"
set SCRIPTNAME="golfmaniasms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
