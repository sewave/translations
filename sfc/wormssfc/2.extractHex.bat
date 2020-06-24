@echo off
set T_FILENAME="TR_Worms (E).smc"
set SCRIPTNAME="wormssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 103BA0:80,103DC0:20,103E20:20,103F20:20
pause
