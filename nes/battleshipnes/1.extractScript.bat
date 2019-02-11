@echo off
set T_FILENAME="Battleship (U) [!].nes"
set SCRIPTNAME="battleshipnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
