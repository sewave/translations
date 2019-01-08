@echo off
set T_FILENAME="Donkey Kong (U) (PRG1) [!].nes"
set SCRIPTNAME="donkeykongnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
