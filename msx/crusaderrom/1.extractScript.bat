@echo off
set T_FILENAME="Crusader (Japan).rom"
set SCRIPTNAME="crusaderrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
