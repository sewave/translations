@echo off
set T_FILENAME="Aaahh!!! Real Monsters (USA).sfc"
set SCRIPTNAME="aaahhrealmonsterssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
