@echo off
set T_FILENAME="Terminator, The (U) [!].bin"
set SCRIPTNAME="terminatorsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
