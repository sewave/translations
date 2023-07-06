@echo off
set T_FILENAME="Pinocchio (USA).gb"
set SCRIPTNAME="pinocchiogb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
