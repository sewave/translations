@echo off
set T_FILENAME="Sonic 3D Blast (UE) [DX].gen"
set SCRIPTNAME="sonic3dblastdxsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
