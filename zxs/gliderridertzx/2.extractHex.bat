@echo off
set T_FILENAME="TR_Glider Rider.tzx"
set SCRIPTNAME="gliderridertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
