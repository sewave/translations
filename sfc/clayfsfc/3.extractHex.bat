@echo off
set T_FILENAME="TR_Clay Fighter - Tournament Edition (U).smc"
set SCRIPTNAME="clayfsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
