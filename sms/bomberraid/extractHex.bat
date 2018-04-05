@echo off 
set T_FILENAME="TR_Bomber Raid (UE) [!].sms"
set SCRIPTNAME="bomberraid"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
