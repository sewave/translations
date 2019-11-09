@echo off
set T_FILENAME="Klax (USA, Europe).gg"
set SCRIPTNAME="klaxgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
