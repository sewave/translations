@echo off
set T_FILENAME="TR_Sonic 3D Blast (UE) [!].bin"
set SCRIPTNAME="sonic3dblastsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
