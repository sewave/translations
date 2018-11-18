@echo off
set T_FILENAME="TR_Power Strike 2 (E) [!].sms"
set SCRIPTNAME="powerstrike2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
