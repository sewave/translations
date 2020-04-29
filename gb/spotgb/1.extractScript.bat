@echo off
set T_FILENAME="Spot (U) [!].gb"
set SCRIPTNAME="spotgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
