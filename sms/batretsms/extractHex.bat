@echo off 
set T_FILENAME="TR_Batman Returns (UE) [!].sms"
set SCRIPTNAME="batretsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
