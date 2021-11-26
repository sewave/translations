@echo off
set T_FILENAME="TR_Double Dungeons - W (USA).pce"
set SCRIPTNAME="doubledungeonspce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
