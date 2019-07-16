@echo off
set T_FILENAME="Rushing Beat (J) [T+ENG].smc"
set SCRIPTNAME="rushingbeatsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
