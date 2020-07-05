@echo off
set T_FILENAME="TR_Donkey Kong Country 2 - Diddy's Kong Quest (U) (V1.1) [!].smc"
set S_FILENAME="Donkey Kong Country 2 - Diddy's Kong Quest (U) (V1.1) [!].smc"
set SCRIPTNAME="donkeykongcountry2diddyskongquestsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
