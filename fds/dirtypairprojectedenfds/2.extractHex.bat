@echo off
set T_FILENAME="TR_Dirty Pair - Project Eden (Japan) [b] [T+ENG].fds"
set SCRIPTNAME="dirtypairprojectedenfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3CD9:10,3D59:20,4099:10
pause
