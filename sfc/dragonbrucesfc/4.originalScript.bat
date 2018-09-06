@echo off
set T_FILENAME="Dragon - The Bruce Lee Story (U).smc"
set SCRIPTNAME="dragonbrucesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
