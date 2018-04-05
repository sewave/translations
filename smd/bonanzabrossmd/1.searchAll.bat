@echo off
set T_FILENAME="Bonanza Bros. (U) [!].gen"
set SCRIPTNAME="bonanzabrossmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
