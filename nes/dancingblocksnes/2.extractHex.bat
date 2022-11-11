@echo off
set T_FILENAME="TR_Dancing Blocks (Asia) (PAL) (Unl).nes"
set SCRIPTNAME="dancingblocksnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9270:20,
pause
