@echo off
set T_FILENAME="Galaxy Force II (W) (REV01) [!].gen"
set SCRIPTNAME="galaxyforceiismd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
