@echo off
set T_FILENAME="TR_Famicom Grand Prix II - 3D Hot Rally (Japan) - [T+ENG].fds"
set S_FILENAME="Famicom Grand Prix II - 3D Hot Rally (Japan).fds"
set SCRIPTNAME="famicomgrandprixii3dhotrallyfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
