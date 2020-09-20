@echo off
set T_FILENAME="Blackthorne (USA).32x"
set SCRIPTNAME="blackthorne32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
