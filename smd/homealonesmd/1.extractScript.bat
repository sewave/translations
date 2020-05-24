@echo off
set T_FILENAME="Home Alone (U) [!].bin"
set SCRIPTNAME="homealonesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
