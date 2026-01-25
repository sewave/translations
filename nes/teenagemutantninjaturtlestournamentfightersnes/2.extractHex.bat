@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Tournament Fighters (USA).nes"
set SCRIPTNAME="teenagemutantninjaturtlestournamentfightersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FB00:10,3FC10:80,35490:120,3DF20:40,350A0:10,35110:50,3C0E0:80,3DB00:10,36420:20,364B0:20,36520:20,366A0:20,367A0:40,3C700:10,37C10:400,38C10:400,39C10:400,3AC10:400
pause
