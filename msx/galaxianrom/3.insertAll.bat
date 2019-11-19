@echo off
set T_FILENAME="TR_Galaxian (1984) (Namcot) (J) [a1].rom"
set S_FILENAME="Galaxian (1984) (Namcot) (J) [a1].rom"
set SCRIPTNAME="galaxianrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
