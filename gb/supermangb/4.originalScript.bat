@echo off
set T_FILENAME="Superman (U) [S][!].gb"
set SCRIPTNAME="supermangb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
