@echo off
set T_FILENAME="TR_Great Soccer (E) [!].sms"
set SCRIPTNAME="greatsoccersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
