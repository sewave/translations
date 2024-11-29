@echo off
set T_FILENAME="TR_Egypt (Japan) [T+ENG].nes"
set SCRIPTNAME="egyptnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FD20:70
pause
