@echo off
set T_FILENAME="TR_Doraemon (Japan) (Rev A) [T+ENG].nes"
set SCRIPTNAME="doraemonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26580:10,27010:50,244F0:20,245F0:20,
pause
