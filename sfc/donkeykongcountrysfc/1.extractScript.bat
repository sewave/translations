@echo off
set T_FILENAME="Donkey Kong Country (U) (V1.2) [!].smc"
set SCRIPTNAME="donkeykongcountrysfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
