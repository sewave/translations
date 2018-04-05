@echo off
set T_FILENAME="TR_Mickey Mania (U) [!].smc"
set SCRIPTNAME="mickeymaniasnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
