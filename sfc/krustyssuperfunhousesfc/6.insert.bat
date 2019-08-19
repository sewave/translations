@echo off
set T_FILENAME="TR_Krusty's Super Fun House (U) (V1.1).smc"
set S_FILENAME="Krusty's Super Fun House (U) (V1.1).smc"
set SCRIPTNAME="krustyssuperfunhousesfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
