@echo off
set T_FILENAME="TR_Cliffhanger (U).smc"
set SCRIPTNAME="cliffhangersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
