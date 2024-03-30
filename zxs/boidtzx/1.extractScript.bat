@echo off
set T_FILENAME="Boid.tzx"
set SCRIPTNAME="boidtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
