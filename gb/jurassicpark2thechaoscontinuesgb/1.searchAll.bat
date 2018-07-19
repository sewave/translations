@echo off
set T_FILENAME="Jurassic Park 2 - The Chaos Continues (UE) (M4) [!].gb"
set SCRIPTNAME="jurassicpark2thechaoscontinuesgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
