@echo off
set T_FILENAME="Fist of the North Star (USA).nes"
set SCRIPTNAME="fistofthenorthstarnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
