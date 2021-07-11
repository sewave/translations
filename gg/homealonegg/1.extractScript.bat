@echo off
set T_FILENAME="Home Alone (USA, Europe).gg"
set SCRIPTNAME="homealonegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
