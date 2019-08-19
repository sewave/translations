@echo off
set T_FILENAME="Krusty's Super Fun House (U) (V1.1).smc"
set SCRIPTNAME="krustyssuperfunhousesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
