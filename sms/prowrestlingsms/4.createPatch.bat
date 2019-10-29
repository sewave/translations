@echo off
set T_FILENAME="TR_Pro Wrestling (UE) [!].sms"
set S_FILENAME="Pro Wrestling (UE) [!].sms"
set SCRIPTNAME="prowrestlingsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
