@echo off
set T_FILENAME="TR_James Pond 3 - Operation Starfish (E).smc"
set S_FILENAME="James Pond 3 - Operation Starfish (E).smc"
set SCRIPTNAME="jamespond3operationstarfishsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
