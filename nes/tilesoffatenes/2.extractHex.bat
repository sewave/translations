@echo off
set T_FILENAME="TR_Tiles of Fate (AVE) [!].nes"
set SCRIPTNAME="tilesoffatenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8FD0:10
pause
