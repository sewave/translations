@echo off
set T_FILENAME="TR_bobl-1.1.nes"
set SCRIPTNAME="bobl11nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AD98:10
pause
