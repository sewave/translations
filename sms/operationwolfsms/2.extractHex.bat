@echo off
set T_FILENAME="TR_Operation Wolf (U) [!].sms"
set SCRIPTNAME="operationwolfsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
