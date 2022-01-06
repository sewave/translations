@echo off
set T_FILENAME="The_Dark_Redux.tap"
set SCRIPTNAME="thedarkreduxtap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
