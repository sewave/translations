@echo off
set T_FILENAME="Valley_of_Rains.tap"
set SCRIPTNAME="valleyofrainstap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
