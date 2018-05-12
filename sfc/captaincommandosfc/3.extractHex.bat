@echo off
set T_FILENAME="TR_Captain Commando (U).smc"
set SCRIPTNAME="captaincommandosfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
