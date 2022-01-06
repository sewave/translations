@echo off
set T_FILENAME="Exo Squad (USA).md"
set SCRIPTNAME="exosquadsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
