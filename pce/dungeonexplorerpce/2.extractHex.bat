@echo off
set T_FILENAME="TR_Dungeon Explorer (USA).pce"
set SCRIPTNAME="dungeonexplorerpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
