@echo off
set T_FILENAME="TR_Side Arms - Hyper Dyne (U).pce"
set SCRIPTNAME="sidearmshyperdynepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
