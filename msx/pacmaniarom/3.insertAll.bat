@echo off
set T_FILENAME="TR_Pac-Mania (1989) (Namcot) (J).rom"
set S_FILENAME="Pac-Mania (1989) (Namcot) (J).rom"
set SCRIPTNAME="pacmaniarom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
