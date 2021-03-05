@echo off
set T_FILENAME="TR_2048.nes"
set SCRIPTNAME="2048nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
