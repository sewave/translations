@echo off
set T_FILENAME="Double Dragon V - The Shadow Falls (U).smc"
set SCRIPTNAME="doubledragonvtheshadowfallssfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
