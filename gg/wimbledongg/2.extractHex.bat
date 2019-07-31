@echo off
set T_FILENAME="TR_Wimbledon (World).gg"
set SCRIPTNAME="wimbledongg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
