@echo off
set T_FILENAME="TR_Krusty's Super Fun House (U) (V1.1).smc"
set SCRIPTNAME="krustyssuperfunhousesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
