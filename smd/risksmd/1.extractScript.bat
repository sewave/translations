@echo off
set T_FILENAME="Risk (USA).md"
set SCRIPTNAME="risksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
