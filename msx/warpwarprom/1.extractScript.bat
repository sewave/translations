@echo off
set T_FILENAME="Warp Warp (1984) (Namcot) (J).rom"
set SCRIPTNAME="warpwarprom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
