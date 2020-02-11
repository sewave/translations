@echo off
set T_FILENAME="TR_Karateka (Japan).nes"
set SCRIPTNAME="karatekanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
