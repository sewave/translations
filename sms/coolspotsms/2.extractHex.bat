@echo off
set T_FILENAME="TR_Cool Spot (E) [!].sms"
set SCRIPTNAME="coolspotsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
