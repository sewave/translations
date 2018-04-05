@echo off 
set T_FILENAME="TR_Hook (U) [c][!].bin"
set SCRIPTNAME="hooksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
