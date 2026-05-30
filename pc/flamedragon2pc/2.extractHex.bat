@echo off
set T_FILENAME="TR_flamedragon2pc"
set SCRIPTNAME="flamedragon2pc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
