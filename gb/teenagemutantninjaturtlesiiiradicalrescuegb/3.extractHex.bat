@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles III - Radical Rescue (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesiiiradicalrescuegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18051-181D0
pause
