@echo off
set T_FILENAME="Donkey Kong Classics (U) [!].nes"
set SCRIPTNAME="donkeykongclassicsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
