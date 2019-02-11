@echo off
set T_FILENAME="Battleship (U) [!].gg"
set SCRIPTNAME="battleshipgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
