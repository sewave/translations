@echo off
set T_FILENAME="Teenage Mutant Ninja Turtles III - The Manhattan Project (USA).nes"
set SCRIPTNAME="teenagemutantninjaturtlesiiithemanhattanprojectnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
