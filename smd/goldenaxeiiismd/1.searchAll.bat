@echo off
set T_FILENAME="Golden Axe III (J) [!].bin"
set SCRIPTNAME="goldenaxeiiismd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
