@echo off
set T_FILENAME="Dynatron Mission.tzx"
set SCRIPTNAME="dynatronmissiontzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
