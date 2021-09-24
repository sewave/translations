@echo off
set T_FILENAME="TR_Super_Robin_Hood.nes"
set SCRIPTNAME="superrobinhoodnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
