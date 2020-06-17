@echo off
set T_FILENAME="TR_Jelly Boy (E).smc"
set SCRIPTNAME="jellyboysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
