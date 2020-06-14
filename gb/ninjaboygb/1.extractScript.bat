@echo off
set T_FILENAME="Ninja Boy (U) [!].gb"
set SCRIPTNAME="ninjaboygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
