@echo off
set T_FILENAME="High Speed (USA).nes"
set SCRIPTNAME="highspeednes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
