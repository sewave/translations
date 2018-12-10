@echo off
set T_FILENAME="TR_Super Off-Road (U).gg"
set SCRIPTNAME="superoffroadgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10DD0:1200
pause
