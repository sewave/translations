@echo off
set T_FILENAME="Famicom Grand Prix II - 3D Hot Rally (Japan) - [T+ENG].fds"
set SCRIPTNAME="famicomgrandprixii3dhotrallyfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
