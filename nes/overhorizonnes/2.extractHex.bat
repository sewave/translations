@echo off
set T_FILENAME="TR_Over Horizon (Japan).nes"
set SCRIPTNAME="overhorizonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39DE0:10,205F0:30,345F0:30,20FD0:10,34FD0:10,3F7D0:10
pause
