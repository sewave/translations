@echo off
set T_FILENAME="TR_Captain Commando (U).smc"
set S_FILENAME="Captain Commando (U).smc"
set SCRIPTNAME="captaincommandosfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
