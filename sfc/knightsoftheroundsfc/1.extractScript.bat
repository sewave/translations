@echo off
set T_FILENAME="Knights of the Round (USA).sfc"
set SCRIPTNAME="knightsoftheroundsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
