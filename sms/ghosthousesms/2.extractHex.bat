@echo off
set T_FILENAME="TR_Ghost House (UE) [!].sms"
set SCRIPTNAME="ghosthousesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
