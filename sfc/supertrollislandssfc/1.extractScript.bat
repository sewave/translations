@echo off
set T_FILENAME="Super Troll Islands (USA).sfc"
set SCRIPTNAME="supertrollislandssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
