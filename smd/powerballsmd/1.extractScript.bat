@echo off
set T_FILENAME="Powerball (USA).md"
set SCRIPTNAME="powerballsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
