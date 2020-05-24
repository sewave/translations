@echo off
set T_FILENAME="Home Alone 2 (U) [!].gb"
set SCRIPTNAME="homealone2gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
