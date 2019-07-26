@echo off
set T_FILENAME="Heroes of Might and Magic (U) (M3) [C][!].gbc"
set SCRIPTNAME="heroesofmightandmagicgbc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
