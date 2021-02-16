@echo off
set T_FILENAME="TR_Cocoron (Japan) [T+ENG].nes"
set SCRIPTNAME="cocoronnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FDB0:10,FC00:10,C110:100,C0C0:20,C5D0:80,C6C0:40,B890:10
pause
