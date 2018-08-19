@echo off
set T_FILENAME="TR_Dick Tracy (UE) [!].sms"
set S_FILENAME="Dick Tracy (UE) [!].sms"
set SCRIPTNAME="dicktracysms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
