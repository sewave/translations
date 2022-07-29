@echo off
set T_FILENAME="NBA Jam - Tournament Edition (World).gg"
set SCRIPTNAME="nbajamtournamenteditiongg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
