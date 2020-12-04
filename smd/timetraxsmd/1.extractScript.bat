@echo off
set T_FILENAME="Time Trax (USA) (Proto).md"
set SCRIPTNAME="timetraxsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
