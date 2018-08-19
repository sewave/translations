@echo off
set T_FILENAME="Back to the Future Part III (U) [!].gen"
set SCRIPTNAME="backtothefuturepartiiismd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
