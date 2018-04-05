@echo off
set T_FILENAME="Alien vs Predator - The Last of His Clan (U) [!].gb"
set SCRIPTNAME="alienvspredatorthelastofhisclangb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 3F "..\EngDict.txt"
pause
