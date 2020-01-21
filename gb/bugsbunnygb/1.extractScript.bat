@echo off
set T_FILENAME="Bugs Bunny (U) [!].gb"
set SCRIPTNAME="bugsbunnygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
