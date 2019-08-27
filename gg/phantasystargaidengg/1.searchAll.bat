@echo off
set T_FILENAME="Phantasy Star Gaiden (J) [T+EngV4.0Smallfont_Magic_Trans].gg"
set SCRIPTNAME="phantasystargaidengg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
