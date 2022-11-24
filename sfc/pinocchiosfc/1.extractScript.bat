@echo off
set T_FILENAME="Pinocchio (USA).sfc"
set SCRIPTNAME="pinocchiosfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
