@echo off
set T_FILENAME="Super James Pond (E) [!].gb"
set SCRIPTNAME="superjamespondgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
