@echo off
set T_FILENAME="TR_F1 Race (Japan).nes"
set SCRIPTNAME="f1racenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 52A0:20,5220:30
pause
