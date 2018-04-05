@echo off
set T_FILENAME="Spider-Man vs. The Kingpin (U) [!].gg"
set SCRIPTNAME="spidermanvsthekingpingg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 3 00 "..\EngDict.txt"
pause
