@echo off
set T_FILENAME="TR_Chiller.tzx"
set SCRIPTNAME="chillertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
