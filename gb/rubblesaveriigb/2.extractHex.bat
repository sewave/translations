@echo off
set T_FILENAME="TR_Rubble Saver II (Japan).gb"
set SCRIPTNAME="rubblesaveriigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
