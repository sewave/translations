@echo off
set T_FILENAME="TR_Battle Chess (U) [!].nes"
set SCRIPTNAME="battlechessnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
