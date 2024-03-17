@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Tournament Fighters (USA).md"
set SCRIPTNAME="teenagemutantninjaturtlestournamentfighterssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1FEE00:400
pause
