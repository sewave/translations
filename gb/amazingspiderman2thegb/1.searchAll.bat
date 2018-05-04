@echo off
set T_FILENAME="Amazing Spider-Man 2, The (UE) [!].gb"
set SCRIPTNAME="amazingspiderman2thegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FE "..\EngDict.txt"
pause
