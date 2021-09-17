@echo off
set T_FILENAME="Zombie Hunter (Japan) [T+ENG].nes"
set SCRIPTNAME="zombiehunternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
