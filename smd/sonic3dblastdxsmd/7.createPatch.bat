@echo off
set T_FILENAME="TR_Sonic 3D Blast (UE) [DX].gen"
set S_FILENAME="Sonic 3D Blast (UE) [!].gen"
set SCRIPTNAME="sonic3dblastdxsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
