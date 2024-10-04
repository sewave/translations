@echo off
set T_FILENAME="bobl-1.2.nes"
set SCRIPTNAME="bobl12nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
