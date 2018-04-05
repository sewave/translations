@echo off
set T_FILENAME="Robocop (U) (V1.0) [M][!].gb"
set SCRIPTNAME="robocopgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
