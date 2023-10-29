@echo off
set T_FILENAME="TR_Soukoban (Japan).gg"
set SCRIPTNAME="soukobangg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
