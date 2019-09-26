@echo off
set T_FILENAME="Magical Puzzle Popils (World) (En,Ja).gg"
set SCRIPTNAME="magicalpuzzlepopilsgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
