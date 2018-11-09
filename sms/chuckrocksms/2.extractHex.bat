@echo off
set T_FILENAME="TR_Chuck Rock (E) [!].sms"
set SCRIPTNAME="chuckrocksms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
