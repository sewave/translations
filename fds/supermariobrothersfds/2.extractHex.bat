@echo off
set T_FILENAME="TR_Super Mario Brothers (Japan).fds"
set SCRIPTNAME="supermariobrothersfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 124C:10,127C:10,12DC:10,133C:30,110C:20
pause
