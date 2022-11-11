@echo off
set T_FILENAME="Teenage Mutant Ninja Turtles III - Radical Rescue (USA).gb"
set SCRIPTNAME="teenagemutantninjaturtlesiiiradicalrescuegb"
java -jar Hextractor.jar -a %SCRIPTNAME%Orig.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
