@echo off
set T_FILENAME="TR_Cannon Fodder (E).smc"
set SCRIPTNAME="cannonfoddersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
