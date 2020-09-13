@echo off
set T_FILENAME="TR_Super Mario Brothers 2 (Japan).fds"
set SCRIPTNAME="supermariobrothers2fds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 127C:10,133C:20,188C:20
pause
