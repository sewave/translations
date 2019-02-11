@echo off
set T_FILENAME="Wonder Boy - The Dragon's Trap (E) [!].gg"
set SCRIPTNAME="wonderboythedragonstrapgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
