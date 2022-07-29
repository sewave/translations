@echo off
set T_FILENAME="NBA Jam - Tournament Edition (USA, Europe).gb"
set SCRIPTNAME="nbajamtournamenteditiongb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
