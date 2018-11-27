@echo off
set T_FILENAME="Cool Spot (U) [!].gb"
set SCRIPTNAME="coolspotgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
