@echo off
set T_FILENAME="TR_Yazzie.rom"
set SCRIPTNAME="yazzierom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1225:18
pause
