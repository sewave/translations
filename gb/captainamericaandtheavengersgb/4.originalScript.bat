@echo off
set T_FILENAME="Captain America and the Avengers (U) [!].gb"
set SCRIPTNAME="captainamericaandtheavengersgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
