@echo off
set T_FILENAME="Goonies (Japan).nes"
set SCRIPTNAME="gooniesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
