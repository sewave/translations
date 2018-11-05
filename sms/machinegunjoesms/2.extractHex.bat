@echo off
set T_FILENAME="TR_Machine Gun Joe (J) [!].sms"
set SCRIPTNAME="machinegunjoesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
