@echo off
set T_FILENAME="Pinocchio (USA).md"
set SCRIPTNAME="pinocchiosmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
