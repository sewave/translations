@echo off
set T_FILENAME="Soul Of A Robot.tzx"
set SCRIPTNAME="soulofarobottzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
