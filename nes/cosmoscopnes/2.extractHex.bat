@echo off
set T_FILENAME="TR_Cosmos Cop (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="cosmoscopnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9AC0:A0
pause
