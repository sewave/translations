@echo off
set T_FILENAME="Monopoly (USA).md"
set SCRIPTNAME="monopolysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
