@echo off
set T_FILENAME="TR_Dig Dug (Japan).nes"
set SCRIPTNAME="digdugnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50C0:200,5E10:200
pause
