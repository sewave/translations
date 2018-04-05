@echo off
set T_FILENAME="Double Dragon V - The Shadow Falls (U) [!].gen"
set SCRIPTNAME="doubledragonvtheshadowfallssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
