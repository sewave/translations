@echo off
set T_FILENAME="TR_ALF (U) [!].sms"
set SCRIPTNAME="alfsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
