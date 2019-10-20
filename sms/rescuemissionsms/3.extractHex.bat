@echo off
set T_FILENAME="TR_Rescue Mission (UE) [!].sms"
set SCRIPTNAME="rescuemissionsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1FD58:18,1FE0E:18
pause
