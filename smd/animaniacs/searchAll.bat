@echo off 
set T_FILENAME="Animaniacs (U) [!].bin"
set SCRIPTNAME="animaniacs"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
