@echo off
set T_FILENAME="Home Alone 2 - Lost in New York (U).smc"
set SCRIPTNAME="homealone2lostinnewyorksfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
