@echo off 
set T_FILENAME="TR_Hook (U) (29252).smc"
set SCRIPTNAME="hooksfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
