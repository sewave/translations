@echo off
set T_FILENAME="TR_R-Type (UE) [!].sms"
set SCRIPTNAME="rtypesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
