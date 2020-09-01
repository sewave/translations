@echo off
set T_FILENAME="Clue (USA).md"
set SCRIPTNAME="cluesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
