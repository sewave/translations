@echo off
set T_FILENAME="Gargoyles (USA).md"
set SCRIPTNAME="gargoylessmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
