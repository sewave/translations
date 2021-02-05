@echo off
set T_FILENAME="Phelios (USA).md"
set SCRIPTNAME="pheliossmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
