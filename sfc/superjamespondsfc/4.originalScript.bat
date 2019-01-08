@echo off
set T_FILENAME="Super James Pond (U).smc"
set SCRIPTNAME="superjamespondsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
