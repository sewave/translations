@echo off
set T_FILENAME="Golden Axe II (W) [!].bin"
set SCRIPTNAME="goldenaxeiismd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
