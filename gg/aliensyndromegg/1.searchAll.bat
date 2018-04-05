@echo off
set T_FILENAME="Alien Syndrome (USA, Europe).gg"
set SCRIPTNAME="aliensyndromegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
