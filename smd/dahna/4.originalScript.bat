@echo off
set T_FILENAME="Dahna - Megami Tanjou (J) [T+ENG].bin"
set SCRIPTNAME="dahna"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
