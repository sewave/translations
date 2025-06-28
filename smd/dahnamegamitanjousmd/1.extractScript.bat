@echo off
set T_FILENAME="Dahna - Megami Tanjou (Japan) [T+ENG].md"
set SCRIPTNAME="dahnamegamitanjousmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
