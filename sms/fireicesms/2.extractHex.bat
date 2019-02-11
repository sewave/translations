@echo off
set T_FILENAME="TR_Fire & Ice (B) [!].sms"
set SCRIPTNAME="fireicesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
