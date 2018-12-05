@echo off
set T_FILENAME="Spawn (U) [!].smc"
set SCRIPTNAME="spawnsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
