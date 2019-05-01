@echo off
set T_FILENAME="TR_R-Type (U).pce"
set SCRIPTNAME="rtypepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B149:200,3B591:90,7B50B:90,7B1C3:10,7B163:10,7B223:40
pause
