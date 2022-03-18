@echo off
set T_FILENAME="Teenage Mutant Hero Turtles.tzx"
set SCRIPTNAME="teenagemutantheroturtlestzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
