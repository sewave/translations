@echo off
set T_FILENAME="TR_Fire & Forget 2 (E) [!].sms"
set SCRIPTNAME="fireforget2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
