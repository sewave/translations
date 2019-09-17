@echo off
set T_FILENAME="TR_Donkey Kong Country (U) (V1.2) [!].smc"
set S_FILENAME="Donkey Kong Country (U) (V1.2) [!].smc"
set SCRIPTNAME="donkeykongcountrysfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
