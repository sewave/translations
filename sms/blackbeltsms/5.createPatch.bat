@echo off
set T_FILENAME="TR_Black Belt (UE) [!].sms"
set S_FILENAME="Black Belt (UE) [!].sms"
set SCRIPTNAME="blackbeltsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
