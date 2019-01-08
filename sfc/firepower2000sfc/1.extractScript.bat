@echo off
set T_FILENAME="Firepower 2000 (U).smc"
set SCRIPTNAME="firepower2000sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
