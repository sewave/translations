@echo off
set T_FILENAME="TR_Minesweeper - Soukaitei (Japan).gb"
set SCRIPTNAME="minesweepersoukaiteigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
