@echo off
set T_FILENAME="TR_Zanac (Japan).fds"
set SCRIPTNAME="zanacfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4DE7:10,4DFD:10,4E13:10,4E29:10,
pause
