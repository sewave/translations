@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles III - Radical Rescue (USA).gb"
set SCRIPTNAME="teenagemutantninjaturtlesiiiradicalrescuegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18041:1D0
pause
