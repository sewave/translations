@echo off 
set T_FILENAME="TR_Batman Returns (UE) [!].sms"
set S_FILENAME="Batman Returns (UE) [!].sms"
set SCRIPTNAME="batretsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
