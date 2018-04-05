@echo off 
set T_FILENAME="TR_Teenage Mutant Ninja Turtles IV - Turtles in Time (U) [!].smc"
set S_FILENAME="Teenage Mutant Ninja Turtles IV - Turtles in Time (U) [!].smc"
set SCRIPTNAME="tmnt4"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%CutScenes.tbl tr_%SCRIPTNAME%CutScenes.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Big.tbl tr_%SCRIPTNAME%Big.ext %T_FILENAME% 
java -jar Hextractor.jar -fcs %T_FILENAME% 
pause 
