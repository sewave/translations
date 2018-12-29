@echo off 
set T_FILENAME="Pink Panther in Pink Goes to Hollywood (U).smc"
set SCRIPTNAME="pinkhwsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
