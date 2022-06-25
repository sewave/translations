@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles III - The Manhattan Project (USA).nes"
set S_FILENAME="Teenage Mutant Ninja Turtles III - The Manhattan Project (USA).nes"
set SCRIPTNAME="teenagemutantninjaturtlesiiithemanhattanprojectnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
