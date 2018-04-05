@echo off
set T_FILENAME="Punisher, The (U) [!].bin"
set SCRIPTNAME="punishersmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
