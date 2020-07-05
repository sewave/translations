@echo off
set T_FILENAME="Donkey Kong Country 2 - Diddy's Kong Quest (U) (V1.1) [!].smc"
set SCRIPTNAME="donkeykongcountry2diddyskongquestsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
