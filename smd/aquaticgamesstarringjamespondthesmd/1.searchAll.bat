@echo off
set T_FILENAME="Aquatic Games - Starring James Pond, The (UE) [!].gen"
set SCRIPTNAME="aquaticgamesstarringjamespondthesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
