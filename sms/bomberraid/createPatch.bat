@echo off 
set T_FILENAME="TR_Bomber Raid (UE) [!].sms"
set S_FILENAME="Bomber Raid (UE) [!].sms"
set SCRIPTNAME="bomberraid"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
