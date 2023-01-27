@echo off
set T_FILENAME="TR_Sector-90.tzx"
set SCRIPTNAME="sector90tzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
