@echo off
set T_FILENAME="TR_Captain Commando (E) [!].smc"
set SCRIPTNAME="captaincommandoeursfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
