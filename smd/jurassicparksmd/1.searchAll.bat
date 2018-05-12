@echo off
set T_FILENAME="Jurassic Park (U) [!].gen"
set SCRIPTNAME="jurassicparksmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
