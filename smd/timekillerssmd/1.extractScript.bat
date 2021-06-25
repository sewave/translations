@echo off
set T_FILENAME="Time Killers (USA).md"
set SCRIPTNAME="timekillerssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
