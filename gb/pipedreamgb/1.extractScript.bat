@echo off
set T_FILENAME="Pipe Dream (U) [!].gb"
set SCRIPTNAME="pipedreamgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
