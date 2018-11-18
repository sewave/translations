@echo off
set T_FILENAME="TR_Power Strike (UE) [!].sms"
set SCRIPTNAME="powerstrikesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
