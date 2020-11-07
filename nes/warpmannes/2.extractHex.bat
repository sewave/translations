@echo off
set T_FILENAME="TR_Warpman (Japan).nes"
set SCRIPTNAME="warpmannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 51A0:70,4E10:100
pause
