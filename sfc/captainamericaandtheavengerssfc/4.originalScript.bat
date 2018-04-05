@echo off
set T_FILENAME="Captain America and The Avengers (U).smc"
set SCRIPTNAME="captainamericaandtheavengerssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
