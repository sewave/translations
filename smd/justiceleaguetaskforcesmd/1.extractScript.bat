@echo off
set T_FILENAME="Justice League Task Force (W) [!].bin"
set SCRIPTNAME="justiceleaguetaskforcesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
