@echo off
set T_FILENAME="TR_After Burst (Japan).gb"
set SCRIPTNAME="afterburstgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
