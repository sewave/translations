@echo off
set T_FILENAME="TR_Super Arabian (J).nes"
set SCRIPTNAME="superarabiannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4D10:60,5E10:C0,5330:100
pause
