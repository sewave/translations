@echo off
set T_FILENAME="TR_Kosmos.tzx"
set SCRIPTNAME="kosmostzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
