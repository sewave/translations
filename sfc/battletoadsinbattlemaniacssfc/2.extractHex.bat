@echo off
set T_FILENAME="TR_Battletoads in Battlemaniacs (USA).sfc"
set SCRIPTNAME="battletoadsinbattlemaniacssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E8FF1:100
pause
