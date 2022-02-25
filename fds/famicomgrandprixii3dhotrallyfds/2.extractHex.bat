@echo off
set T_FILENAME="TR_Famicom Grand Prix II - 3D Hot Rally (Japan) - [T+ENG].fds"
set SCRIPTNAME="famicomgrandprixii3dhotrallyfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BFD:10,1CC4E:10,28DE:80
pause
