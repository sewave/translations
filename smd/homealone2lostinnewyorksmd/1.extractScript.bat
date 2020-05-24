@echo off
set T_FILENAME="Home Alone 2 - Lost in New York (U) [!].bin"
set SCRIPTNAME="homealone2lostinnewyorksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
