@echo off
set T_FILENAME="TR_Sensible Soccer (E) [!].sms"
set SCRIPTNAME="sensiblesoccersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
