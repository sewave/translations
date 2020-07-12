@echo off
set T_FILENAME="TR_Batman Forever (World).gg"
set SCRIPTNAME="batmanforevergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
