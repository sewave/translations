@echo off
set T_FILENAME="TR_Great Ice Hockey (UJ) [!].sms"
set SCRIPTNAME="greaticehockeysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
