@echo off
set T_FILENAME="TR_Dragon's Curse (U).pce"
set SCRIPTNAME="dragonscursepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
