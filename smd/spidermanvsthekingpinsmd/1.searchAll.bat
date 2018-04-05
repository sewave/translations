@echo off
set T_FILENAME="Spider-Man vs The Kingpin (W) [!].bin"
set SCRIPTNAME="spidermanvsthekingpinsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 16 00 "..\EngDict.txt"
pause
