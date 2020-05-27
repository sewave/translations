@echo off
set T_FILENAME="TR_Kid Niki (J).gb"
set SCRIPTNAME="kidnikigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
