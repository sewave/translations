@echo off
set T_FILENAME="TR_Sonic 3D Blast (UE) [DX].gen"
set SCRIPTNAME="sonic3dblastdxsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
