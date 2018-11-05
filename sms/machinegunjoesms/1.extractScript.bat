@echo off
set T_FILENAME="Machine Gun Joe (J) [!].sms"
set SCRIPTNAME="machinegunjoesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
