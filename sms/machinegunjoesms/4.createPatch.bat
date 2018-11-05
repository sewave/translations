@echo off
set T_FILENAME="TR_Machine Gun Joe (J) [!].sms"
set S_FILENAME="Machine Gun Joe (J) [!].sms"
set SCRIPTNAME="machinegunjoesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
