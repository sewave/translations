@echo off
set T_FILENAME="Ice Hockey (U) [!].nes"
set SCRIPTNAME="icehockeynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
