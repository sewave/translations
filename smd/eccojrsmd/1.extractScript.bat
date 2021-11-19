@echo off
set T_FILENAME="Ecco Jr. (USA, Australia).md"
set SCRIPTNAME="eccojrsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
