@echo off
set T_FILENAME="Soldiers of Fortune (U) [!].smc"
set SCRIPTNAME="soldiersoffortunesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
