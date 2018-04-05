@echo off
set T_FILENAME="Amazing Spider-Man, The (UE) [!].gb"
set SCRIPTNAME="amazingspidermanthegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
