@echo off
set T_FILENAME="TR_Marauder.tzx"
set SCRIPTNAME="maraudertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
