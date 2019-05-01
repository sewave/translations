@echo off
set T_FILENAME="TR_R-Type Part-1 (Japan).pce"
set SCRIPTNAME="rtypepart1pce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B591:90,3B2A9:40,3B1E9:10
pause
