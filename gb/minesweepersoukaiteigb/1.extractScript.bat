@echo off
set T_FILENAME="Minesweeper - Soukaitei (Japan).gb"
set SCRIPTNAME="minesweepersoukaiteigb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
