@echo off
set T_FILENAME="TR_Firepower 2000 (U).smc"
set SCRIPTNAME="firepower2000sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
