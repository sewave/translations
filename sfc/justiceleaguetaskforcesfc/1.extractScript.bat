@echo off
set T_FILENAME="Justice League Task Force (USA).sfc"
set SCRIPTNAME="justiceleaguetaskforcesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
