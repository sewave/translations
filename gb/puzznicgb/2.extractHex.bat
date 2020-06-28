@echo off
set T_FILENAME="TR_Puzznic (Japan).gb"
set SCRIPTNAME="puzznicgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
