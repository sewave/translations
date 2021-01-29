@echo off
set T_FILENAME="TR_BC Racers (USA).32x"
set SCRIPTNAME="bcracers32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
