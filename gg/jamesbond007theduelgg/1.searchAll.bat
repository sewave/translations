@echo off
set T_FILENAME="James Bond 007 - The Duel (U) [!].gg"
set SCRIPTNAME="jamesbond007theduelgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
