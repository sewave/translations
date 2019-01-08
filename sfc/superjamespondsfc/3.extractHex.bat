@echo off
set T_FILENAME="TR_Super James Pond (U).smc"
set SCRIPTNAME="superjamespondsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
