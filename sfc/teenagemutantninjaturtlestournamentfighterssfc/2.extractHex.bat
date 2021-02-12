@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Tournament Fighters (USA).sfc"
set SCRIPTNAME="teenagemutantninjaturtlestournamentfighterssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
