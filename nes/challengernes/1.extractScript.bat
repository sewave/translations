@echo off
set T_FILENAME="Challenger (Japan).nes"
set SCRIPTNAME="challengernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
