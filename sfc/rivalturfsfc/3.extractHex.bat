@echo off
set T_FILENAME="TR_Rival Turf (U).smc"
set SCRIPTNAME="rivalturfsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
