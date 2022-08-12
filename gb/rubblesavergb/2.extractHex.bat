@echo off
set T_FILENAME="TR_Rubble Saver (Japan).gb"
set SCRIPTNAME="rubblesavergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10810:30
pause
