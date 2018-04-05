@echo off 
set T_FILENAME="TR_Legend (U) (718).smc"
set SCRIPTNAME="legend"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
