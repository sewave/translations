@echo off
set T_FILENAME="Beauty and the Beast - Roar of the Beast (U) [!].bin"
set SCRIPTNAME="beautybeastroarsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
