@echo off 
set T_FILENAME="Teenage Mutant Ninja Turtles IV - Turtles in Time (U) [!].smc"
set SCRIPTNAME="tmnt4"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%CutScenes.tbl %T_FILENAME% %SCRIPTNAME%CutScenes.ext %SCRIPTNAME%CutScenes.off
java -jar Hextractor.jar -a %SCRIPTNAME%Big.tbl %T_FILENAME% %SCRIPTNAME%Big.ext %SCRIPTNAME%Big.off
pause 
