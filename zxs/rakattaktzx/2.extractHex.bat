@echo off
set T_FILENAME="TR_Rakattak.tzx"
set SCRIPTNAME="rakattaktzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
