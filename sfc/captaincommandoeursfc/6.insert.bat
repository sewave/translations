@echo off
set T_FILENAME="TR_Captain Commando (E) [!].smc"
set S_FILENAME="Captain Commando (E) [!].smc"
set SCRIPTNAME="captaincommandoeursfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
