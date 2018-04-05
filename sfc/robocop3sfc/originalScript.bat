@echo off 
set T_FILENAME="Robocop 3 (U).smc"
set SCRIPTNAME="robocop3sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
