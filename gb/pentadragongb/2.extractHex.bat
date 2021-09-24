@echo off
set T_FILENAME="TR_Penta Dragon (Japan) [T+ENG].gb"
set SCRIPTNAME="pentadragongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39D40:80
pause
