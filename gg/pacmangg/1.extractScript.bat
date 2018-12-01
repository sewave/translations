@echo off
set T_FILENAME="Pac-Man (USA, Europe).gg"
set SCRIPTNAME="pacmangg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
