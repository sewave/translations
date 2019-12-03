@echo off
set T_FILENAME="TR_Battletoads & Double Dragon - The Ultimate Team (U) [!].smc"
set S_FILENAME="Battletoads & Double Dragon - The Ultimate Team (U) [!].smc"
set SCRIPTNAME="battletoadsdoubledragontheultimateteamsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
