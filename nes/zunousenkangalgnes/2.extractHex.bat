@echo off
set T_FILENAME="TR_Zunou Senkan Galg (Japan).nes"
set SCRIPTNAME="zunousenkangalgnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
