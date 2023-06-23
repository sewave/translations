@echo off
set T_FILENAME="TR_Dirty Racing (Japan).gb"
set SCRIPTNAME="dirtyracinggb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BB57:B0,B7D7:1A0,85C8:18,84F0:40,9F08:50,1AF40:10,1AFC0:10,95D8:30
pause
