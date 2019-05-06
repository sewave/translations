@echo off
set T_FILENAME="TR_Soldier Blade (U).pce"
set SCRIPTNAME="soldierbladepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
