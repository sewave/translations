@echo off
set T_FILENAME="Space Hunter (Japan) [T+ENG].nes"
set SCRIPTNAME="spacehunternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
