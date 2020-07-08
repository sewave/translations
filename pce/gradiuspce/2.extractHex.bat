@echo off
set T_FILENAME="TR_Gradius (Japan).pce"
set SCRIPTNAME="gradiuspce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
