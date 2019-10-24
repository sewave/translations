@echo off
set T_FILENAME="TR_High Speed (USA).nes"
set SCRIPTNAME="highspeednes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
