@echo off
set T_FILENAME="TR_Captain Commando (E) [!].smc"
set S_FILENAME="Captain Commando (E) [!].smc"
set SCRIPTNAME="captaincommandoeursfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
