@echo off
set T_FILENAME="TR_Monopoly (U) [!].sms"
set SCRIPTNAME="monopolysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
