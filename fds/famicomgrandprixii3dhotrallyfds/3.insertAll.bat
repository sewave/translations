@echo off
set T_FILENAME="TR_Famicom Grand Prix II - 3D Hot Rally (Japan) - [T+ENG].fds"
set S_FILENAME="Famicom Grand Prix II - 3D Hot Rally (Japan) - [T+ENG].fds"
set SCRIPTNAME="famicomgrandprixii3dhotrallyfds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
