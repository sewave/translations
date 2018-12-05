@echo off
set T_FILENAME="TR_Spawn (U) [!].smc"
set S_FILENAME="Spawn (U) [!].smc"
set SCRIPTNAME="spawnsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
