@echo off
set T_FILENAME="Lion King, The (W) [!].gen"
set SCRIPTNAME="lionkingthesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
