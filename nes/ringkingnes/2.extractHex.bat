@echo off
set T_FILENAME="TR_Ring King (USA).nes"
set SCRIPTNAME="ringkingnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D0B0:10
pause
