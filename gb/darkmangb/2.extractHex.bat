@echo off
set T_FILENAME="TR_Darkman (U).gb"
set SCRIPTNAME="darkmangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
