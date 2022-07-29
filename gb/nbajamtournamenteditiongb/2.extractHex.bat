@echo off
set T_FILENAME="TR_NBA Jam - Tournament Edition (USA, Europe).gb"
set SCRIPTNAME="nbajamtournamenteditiongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
