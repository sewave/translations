@echo off
set T_FILENAME="Ms. Pac-Man (U).smc"
set SCRIPTNAME="mspacmansfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
