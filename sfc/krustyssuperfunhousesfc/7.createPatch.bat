@echo off
set T_FILENAME="TR_Krusty's Super Fun House (U) (V1.1).smc"
set S_FILENAME="Krusty's Super Fun House (U) (V1.1).smc"
set SCRIPTNAME="krustyssuperfunhousesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
