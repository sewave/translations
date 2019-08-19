@echo off
set T_FILENAME="Krusty's Super Funhouse (UE) (REV01) [!].gen"
set SCRIPTNAME="krustyssuperfunhousesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
