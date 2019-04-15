@echo off
set T_FILENAME="Spider-Man and Venom - Separation Anxiety (U) [!].gen"
set SCRIPTNAME="spdvensepasmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
