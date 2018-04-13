@echo off
set T_FILENAME="Atomic Runner (U) [!].gen"
set SCRIPTNAME="atomicrunnerssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
