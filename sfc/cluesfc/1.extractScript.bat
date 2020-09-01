@echo off
set T_FILENAME="Clue (USA).sfc"
set SCRIPTNAME="cluesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
