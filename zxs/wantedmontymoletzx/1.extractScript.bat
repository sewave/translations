@echo off
set T_FILENAME="Wanted - Monty Mole.tzx"
set SCRIPTNAME="wantedmontymoletzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
