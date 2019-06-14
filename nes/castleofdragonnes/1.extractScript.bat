@echo off
set T_FILENAME="Castle of Dragon (U) [!].nes"
set SCRIPTNAME="castleofdragonnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
