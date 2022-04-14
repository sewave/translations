@echo off
set T_FILENAME="TR_Nazo no Murasamejou (Japan) [T+ENG].fds"
set SCRIPTNAME="nazonomurasamejoufds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 139C:100,10B47:50
pause
