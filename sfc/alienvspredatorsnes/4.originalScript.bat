@echo off
set T_FILENAME="Alien vs. Predator (U).smc"
set SCRIPTNAME="alienvspredatorsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
