@echo off
set T_FILENAME="Sonic 3D Blast (UE) [DX].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
