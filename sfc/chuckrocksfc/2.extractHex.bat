@echo off
set T_FILENAME="TR_Chuck Rock (U).smc"
set SCRIPTNAME="chuckrocksfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
