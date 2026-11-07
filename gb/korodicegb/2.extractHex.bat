@echo off
set T_FILENAME="TR_Koro Dice (Japan).gb"
set SCRIPTNAME="korodicegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
