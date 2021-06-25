@echo off
set T_FILENAME="TR_Goonies (Japan).nes"
set SCRIPTNAME="gooniesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AD10:30,AE10:30,B070:70,9070:70
pause
