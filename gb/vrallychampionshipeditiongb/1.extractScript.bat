@echo off
set T_FILENAME="V-Rally - Championship Edition (U) (M3) [M][!].gb"
set SCRIPTNAME="vrallychampionshipeditiongb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
