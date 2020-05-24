@echo off
set T_FILENAME="TR_Home Alone (U).smc"
set SCRIPTNAME="homealonesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
