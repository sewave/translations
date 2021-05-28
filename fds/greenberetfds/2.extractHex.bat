@echo off
set T_FILENAME="TR_Green Beret (Japan).fds"
set SCRIPTNAME="greenberetfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
