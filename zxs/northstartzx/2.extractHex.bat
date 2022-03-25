@echo off
set T_FILENAME="TR_Northstar.tzx"
set SCRIPTNAME="northstartzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
