@echo off
set T_FILENAME="The_Dark_Lost_Pages.tap"
set SCRIPTNAME="thedarklostpagestap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
