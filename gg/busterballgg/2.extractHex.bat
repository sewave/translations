@echo off
set T_FILENAME="TR_Buster Ball (Japan).gg"
set SCRIPTNAME="busterballgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
