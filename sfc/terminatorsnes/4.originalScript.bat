@echo off
set T_FILENAME="Terminator, The (U).smc"
set SCRIPTNAME="terminatorsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
