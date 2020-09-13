@echo off
set T_FILENAME="Geimos (Japan).nes"
set SCRIPTNAME="geimosnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
