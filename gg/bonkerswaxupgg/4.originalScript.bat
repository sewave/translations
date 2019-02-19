@echo off
set T_FILENAME="Bonkers Wax Up! (U) [!].gg"
set SCRIPTNAME="bonkerswaxupgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
