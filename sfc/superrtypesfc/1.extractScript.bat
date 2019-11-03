@echo off
set T_FILENAME="Super R-Type (U) [!].smc"
set SCRIPTNAME="superrtypesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
