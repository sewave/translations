@echo off
set T_FILENAME="TR_Mappy (1984) (Namcot) (J).rom"
set S_FILENAME="Mappy (1984) (Namcot) (J).rom"
set SCRIPTNAME="mappyrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
