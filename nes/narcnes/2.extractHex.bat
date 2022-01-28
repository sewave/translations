@echo off
set T_FILENAME="TR_NARC (USA).nes"
set SCRIPTNAME="narcnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9E38:50,
pause
