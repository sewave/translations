@echo off
set T_FILENAME="Nightmare on Elm Street, A (USA).nes"
set SCRIPTNAME="nightmareonelmstreetanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
