@echo off
set T_FILENAME="Blackthorne (USA).sfc"
set SCRIPTNAME="blackthornesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
