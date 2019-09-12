@echo off
set T_FILENAME="Combatribes, The (U).smc"
set SCRIPTNAME="combatribesthesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
