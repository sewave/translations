@echo off
set T_FILENAME="TR_Ecco the Dolphin (UE).sms"
set SCRIPTNAME="eccosms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
