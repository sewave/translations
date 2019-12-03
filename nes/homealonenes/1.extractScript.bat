@echo off
set T_FILENAME="Home Alone (U) (REVA) [!].nes"
set SCRIPTNAME="homealonenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
