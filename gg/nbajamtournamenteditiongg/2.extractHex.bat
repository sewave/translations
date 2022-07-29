@echo off
set T_FILENAME="TR_NBA Jam - Tournament Edition (World).gg"
set SCRIPTNAME="nbajamtournamenteditiongg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
