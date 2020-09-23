@echo off
set T_FILENAME="Slaughter Sport (USA).md"
set SCRIPTNAME="slaughtersportsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
