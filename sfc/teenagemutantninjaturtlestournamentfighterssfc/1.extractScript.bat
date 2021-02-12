@echo off
set T_FILENAME="Teenage Mutant Ninja Turtles - Tournament Fighters (USA).sfc"
set SCRIPTNAME="teenagemutantninjaturtlestournamentfighterssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
