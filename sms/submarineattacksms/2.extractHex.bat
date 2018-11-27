@echo off
set T_FILENAME="TR_Submarine Attack (UE) [!].sms"
set SCRIPTNAME="submarineattacksms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
