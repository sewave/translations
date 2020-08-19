@echo off
set T_FILENAME="Frogger (USA).sfc"
set SCRIPTNAME="froggersfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
