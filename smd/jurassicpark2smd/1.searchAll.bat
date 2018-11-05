@echo off
set T_FILENAME="Jurassic Park 2 - The Lost World (U) [!].bin"
set SCRIPTNAME="jurassicpark2smd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
