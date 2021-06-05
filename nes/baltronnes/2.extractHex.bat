@echo off
set T_FILENAME="TR_Baltron (Japan).nes"
set SCRIPTNAME="baltronnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8120:20,8C20:80,8D00:10,8FB0:10,A000:10
pause
