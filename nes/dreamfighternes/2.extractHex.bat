@echo off
set T_FILENAME="TR_Dream Fighter (Unl).nes"
set SCRIPTNAME="dreamfighternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8F10:100,9F20:80
pause
