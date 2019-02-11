@echo off
set T_FILENAME="TR_Micro Machines (E).gg"
set S_FILENAME="Micro Machines (E).gg"
set SCRIPTNAME="micromachinesgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
