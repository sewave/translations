@echo off
set T_FILENAME="AWS Pro Moves Soccer (USA).md"
set SCRIPTNAME="awspromovessoccersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
