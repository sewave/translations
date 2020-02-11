@echo off
set T_FILENAME="Pac-Land (Japan).nes"
set SCRIPTNAME="paclandnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
