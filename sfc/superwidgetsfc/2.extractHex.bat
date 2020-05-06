@echo off
set T_FILENAME="TR_Super Widget (U).smc"
set SCRIPTNAME="superwidgetsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
