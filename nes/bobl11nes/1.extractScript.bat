@echo off
set T_FILENAME="bobl-1.1.nes"
set SCRIPTNAME="bobl11nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
