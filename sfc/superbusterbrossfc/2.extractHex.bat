@echo off
set T_FILENAME="TR_Super Buster Bros. (U) (V1.1).smc"
set SCRIPTNAME="superbusterbrossfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
