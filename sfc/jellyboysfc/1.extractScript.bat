@echo off
set T_FILENAME="Jelly Boy (E).smc"
set SCRIPTNAME="jellyboysfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
