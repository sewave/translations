@echo off
set T_FILENAME="Chuck Rock (U).smc"
set SCRIPTNAME="chuckrocksfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
