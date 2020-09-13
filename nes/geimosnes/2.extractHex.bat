@echo off
set T_FILENAME="TR_Geimos (Japan).nes"
set SCRIPTNAME="geimosnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9240:10,91B0:10,9150:10
pause
