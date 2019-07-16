@echo off
set T_FILENAME="TR_Rushing Beat (J) [T+ENG].smc"
set S_FILENAME="Rushing Beat (J) [T+ENG].smc"
set SCRIPTNAME="rushingbeatsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
