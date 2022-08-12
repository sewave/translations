@echo off
set T_FILENAME="Level 5.tzx"
set SCRIPTNAME="level5tzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
