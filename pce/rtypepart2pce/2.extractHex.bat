@echo off
set T_FILENAME="TR_R-Type Part-2 (Japan).pce"
set SCRIPTNAME="rtypepart2pce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B0C3:200,3B50B:90
pause
