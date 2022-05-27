@echo off
set T_FILENAME="TR_All Night Nippon Super Mario Brothers (Japan) (Promotion Card).fds"
set SCRIPTNAME="allnightnipponsupermariobrothersfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 127C:10,133C:10,1FFC:100,110C:20
pause
