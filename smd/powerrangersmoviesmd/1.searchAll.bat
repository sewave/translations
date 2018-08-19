@echo off
set T_FILENAME="Mighty Morphin Power Rangers - The Movie (U) [!].bin"
set SCRIPTNAME="powerrangersmoviesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt3.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
