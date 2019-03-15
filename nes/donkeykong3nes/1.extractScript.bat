@echo off
set T_FILENAME="Donkey Kong 3 (U) [!].nes"
set SCRIPTNAME="donkeykong3nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
