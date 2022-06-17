@echo off
set T_FILENAME="TR_Interalia.tzx"
set SCRIPTNAME="interaliatzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
