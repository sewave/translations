@echo off
set T_FILENAME="Super Off Road (U) [!].smc"
set SCRIPTNAME="superoffroadsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
