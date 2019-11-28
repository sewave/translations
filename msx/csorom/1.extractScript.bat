@echo off
set T_FILENAME="C-So! (1985)(Pony Canyon).rom"
set SCRIPTNAME="csorom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
