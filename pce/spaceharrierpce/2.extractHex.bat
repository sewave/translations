@echo off
set T_FILENAME="TR_Space Harrier (U).pce"
set SCRIPTNAME="spaceharrierpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
