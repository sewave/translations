@echo off
set T_FILENAME="TR_Side Pocket (U).smc"
set SCRIPTNAME="sidepocketsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
