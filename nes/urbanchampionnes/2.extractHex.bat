@echo off
set T_FILENAME="TR_Urban Champion (W) [!].nes"
set SCRIPTNAME="urbanchampionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5F20:10,5E10:60
pause
